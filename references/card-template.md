## Card Structure

A card is a markdown file in one of the kanban status folders.

| Field | Type | Description |
|-------|------|-------------|
| title | H1   | Short, specific name of the unit of work |
| description | H2 | Context and reasoning — what and why this card exists |
| tasks | H2 | Actionable steps to complete the card. Each item should be a concrete, verifiable step |
| acceptance_criteria | H2 | Conditions the finished work must satisfy. Each criterion should be testable or observable |

### Filename Convention

Use `PREFIX-XXX.md` format (e.g., `AUTH-001.md`). The agent determines the prefix and global sequence number.

### Example

```md
# Integrate OAuth2 login flow

## Description

Add OAuth2 authentication using Google as the provider. This enables users to log in without creating a separate account. The flow uses PKCE for security and stores session tokens encrypted at rest.

## Tasks

- [ ] Register OAuth2 client credentials in Google Cloud Console
- [ ] Implement token exchange endpoint in backend API
- [ ] Build login redirect flow in frontend
- [ ] Add PKCE validation to the token request
- [ ] Write unit tests for token validation logic

## Acceptance Criteria

- Users can initiate login via Google button on auth page
- Token response includes valid access and refresh tokens
- Session persists across page reloads and browser restarts
- Invalid or expired tokens are rejected with 401
- Fallback login (username/password) still works alongside OAuth2
