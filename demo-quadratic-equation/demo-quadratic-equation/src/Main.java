//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        // Gọi phương thức trong thư viện
        double a = 1;
        double b = -3;
        double c = 2;

        // Gọi phương thức static từ thư viện QuadraticEquationSolver
        QuadraticEquationSolver.solveQuadraticEquation(a, b, c);
    }
}