fn linear_regression(x: &[f64], y: &[f64]) -> (f64, f64) {
    let sum_x = x.iter().sum::<f64>();
    let sum_y = y.iter().sum::<f64>();
    let sum_xy = x.iter().zip(y.iter()).map(|(xi, yi)| xi * yi).sum::<f64>();
    let sum_x2 = x.iter().map(|xi| xi * xi).sum::<f64>();
    (
        sum_xy / sum_x2,
        (sum_y / x.len() as f64) - ((sum_xy / sum_x2) * (sum_x / x.len() as f64)),
    )
}

fn main() {
    let x = vec![0.0, 1.0, 2.0, 3.0, 4.0];
    let y = vec![2.0, 3.0, 5.0, 4.0, 6.0];
    let (slope, intercept) = linear_regression(&x, &y);
    println!("Linear regression predictions:");
    for xi in &x {
        println!("{:.2}", slope * xi + intercept);
    }
}
