import JSON
import HTTPVapor

extension JSON: ResponseRepresentable {
    public func makeResponse() throws -> Response {
        return try Response(status: .ok, json: self)
    }
}
