import 'dart:collection';

import 'package:flutter_design_patterns/design_patterns/iterator/tree_collections/depth_first_tree_collection.dart';
import 'package:flutter_design_patterns/design_patterns/iterator/tree_iterators/itree_iterator.dart';

class DepthFirstIterator implements ITreeIterator {
  final DepthFirstTreeCollection treeCollection;
  final Set<int> visitedNodes = <int>{};
  final ListQueue<int> nodeStack = ListQueue<int>();

  final int _initialNode = 1;
  int _currentNode;

  DepthFirstIterator(this.treeCollection) {
    _currentNode = _initialNode;
    nodeStack.add(_initialNode);
  }

  Map<int, Set<int>> get adjacencyList => treeCollection.graph.adjacencyList;

  @override
  bool hasNext() {
    return nodeStack.isNotEmpty;
  }

  @override
  int getNext() {
    if (!hasNext()) {
      return null;
    }

    _currentNode = nodeStack.removeLast();
    visitedNodes.add(_currentNode);

    if (adjacencyList.containsKey(_currentNode)) {
      for (var node in adjacencyList[_currentNode]
          .where((n) => !visitedNodes.contains(n))) {
        nodeStack.addLast(node);
      }
    }

    return _currentNode;
  }

  @override
  void reset() {
    _currentNode = _initialNode;
    visitedNodes.clear();
    nodeStack.clear();
    nodeStack.add(_initialNode);
  }
}
