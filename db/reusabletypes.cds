namespace reusable.types;

type salary : Decimal(5, 2);
type Email  : String @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
type Mobile : String @assert.format: '^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';

aspect fullName{
    fname : String;
    lname : String;
}