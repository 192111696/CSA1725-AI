import math

class Node:
    def __init__(self, value=None):
        self.value = value
        self.children = []

def minimax(node, depth, alpha, beta, maximizing_player):
    if depth == 0 or len(node.children) == 0:
        return node.value
    
    if maximizing_player:
        max_eval = -math.inf
        for child in node.children:
            eval = minimax(child, depth - 1, alpha, beta, False)
            max_eval = max(max_eval, eval)
            alpha = max(alpha, eval)
            if beta <= alpha:
                break
        return max_eval
    else:
        min_eval = math.inf
        for child in node.children:
            eval = minimax(child, depth - 1, alpha, beta, True)
            min_eval = min(min_eval, eval)
            beta = min(beta, eval)
            if beta <= alpha:
                break
        return min_eval

# Example usage
root = Node()
root.value = 0
# Add child nodes with their respective values
child1 = Node(3)
child2 = Node(5)
child3 = Node(6)
root.children = [child1, child2, child3]

# Run minimax with alpha-beta pruning
best_value = minimax(root, 3, -math.inf, math.inf, True)
print("Best value:", best_value)
