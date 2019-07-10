grade = input('Enter grade : ');

switch grade
    case 'A+'
        fprintf('Super\n');
    case 'A'
        fprintf('Excellent\n');
    case 'A-'
        fprintf('Very Good\n');
    case 'B+'
        fprintf('Good\n');
    case 'B'
        fprintf('Not so good\n');
    case 'C'
        fprintf('Bad\n');
    case 'D'
        fprintf('Very Bad\n');
    otherwise
        fprintf('Failed\n');
end
