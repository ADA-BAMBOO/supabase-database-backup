SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict tXTCrfjJWWDiTgwwzPGonChw9pCd3OjQGzbPvyNDpJjjMu4Ngi4W6adiGx084ga

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: n8n_chat_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."n8n_chat_histories" ("id", "session_id", "message", "created_at") FROM stdin;
1	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "xin chào", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:12:39.482245+00
2	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ em chào anh/chị, em là chuyên viên tư vấn của BBOTech đây ạ. Không biết hiện tại doanh nghiệp mình đang cần hỗ trợ mảng IT nào, hay đang gặp khó khăn gì trong quá trình vận hành để em tư vấn ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:12:39.669878+00
3	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "chatbot bên bạn cung cấp thế nào v", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:15:30.937278+00
4	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Bên em chuyên xây dựng Chatbot đa nền tảng (Zalo, Fanpage, Website) được huấn luyện trực tiếp trên dữ liệu riêng của doanh nghiệp anh/chị luôn ạ. Tức là bot sẽ học từ tài liệu, bảng giá, quy trình bên mình để tư vấn cho khách y như nhân viên thật, chứ không bị cứng nhắc theo từ khóa đâu ạ. Không biết hiện tại bên mình đang cần bot hỗ trợ trực ở kênh nào nhiều nhất vậy ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:15:31.107093+00
5	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "cho tôi thông tin thêm về dịch vụ này đi", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:16:22.034068+00
6	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ điểm đặc biệt nhất là bên em sẽ cho bot học trực tiếp từ tài liệu, bảng giá và quy trình của riêng doanh nghiệp mình, nên bot trả lời cực kỳ sát thực tế chứ không nói chung chung đâu ạ. Bot có thể chạy cùng lúc trên cả Zalo, Fanpage, Website và nếu gặp ca khó thì sẽ tự động chuyển qua cho nhân viên thật xử lý luôn. Thường thì mỗi ngày khách hàng hay hỏi bên mình những nhóm vấn đề gì nhiều nhất vậy anh/chị?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:16:22.204282+00
7	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "giá cả thế nào bạn", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:17:25.480711+00
8	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ về chi phí thì bên em không có bảng giá cố định vì sẽ tùy thuộc vào lượng dữ liệu và số kênh mình muốn bot chạy ạ. Thường chi phí sẽ gồm phần setup ban đầu và phí duy trì hằng tháng để bên em lo hết từ hạ tầng, bảo trì server cho đến việc cập nhật dữ liệu liên tục. Để em ước tính mức giá sát nhất, anh/chị cho em hỏi trung bình mỗi ngày bên mình có khoảng bao nhiêu khách nhắn tin cần bot hỗ trợ ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:17:25.660336+00
9	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "cảm ơn bạn, cho tôi thông tin liên hệ đi", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:19:37.133068+00
10	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ anh/chị có thể gọi điện trực tiếp hoặc nhắn Zalo cho BBOTech qua hotline 0797467390 nha. Nếu cần gửi trước tài liệu để bên em xem thử, mình cứ email về contact@bbotech.vn là được ạ. Để tiện trao đổi chi tiết hơn về cách huấn luyện bot phù hợp với dữ liệu doanh nghiệp mình, anh/chị cho em xin số điện thoại Zalo để bên em chủ động liên hệ hỗ trợ nhé?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:19:37.304318+00
11	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "xia xìa bạn", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:21:02.705407+00
12	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ em cảm ơn anh/chị ạ. Anh/chị cứ lưu lại thông tin bên em, lúc nào cần tư vấn sâu hơn thì nhắn em nha. Hay là anh/chị cứ để lại số Zalo, khi nào tiện em gửi qua mấy mẫu chatbot thực tế bên em từng làm cho mình tham khảo thêm nhé?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:21:02.884284+00
13	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "alo", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:25:37.316586+00
14	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ em nghe đây ạ. Anh/chị cần em tư vấn thêm gì về phần chatbot hay đang có thắc mắc nào khác không ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:25:37.485247+00
15	ee69984c90e848508c4c8d87c404a501	{"type": "human", "content": "còn các dịch vụ khác thì sao?", "additional_kwargs": {}, "response_metadata": {}}	2026-04-08 11:26:09.315804+00
16	ee69984c90e848508c4c8d87c404a501	{"type": "ai", "content": "Dạ ngoài Chatbot ra thì bên em hoạt động như một \\"phòng IT Online\\" chuyên thiết kế Website, hệ thống Email Marketing và tự động hóa quy trình (AI Automation) ạ. Điểm chung là bên em sẽ lo từ A-Z khâu setup, vận hành và bảo trì trên server riêng chứ không giao tool rồi để khách hàng tự bơi đâu. Hiện tại ngoài khâu nhắn tin, bên mình có đang muốn làm thêm website hay cần tự động hóa quy trình nào trong nội bộ nữa không anh/chị?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-08 11:26:09.480622+00
17	1910	{"type": "human", "content": "<p>hello</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:33:25.957043+00
18	1910	{"type": "ai", "content": "Dạ em chào anh/chị, em là chuyên viên tư vấn bên BBOTech ạ. \\n\\nKhông biết hiện tại doanh nghiệp mình đang gặp khó khăn gì, hay anh/chị đang tìm hiểu giải pháp công nghệ nào để em hỗ trợ ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:33:26.122207+00
19	1910	{"type": "human", "content": "<p>dịch vụ web thế nào</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:34:45.010649+00
20	1910	{"type": "ai", "content": "Dạ bên em cung cấp dịch vụ làm website trọn gói từ khâu khảo sát, thiết kế giao diện đến khi vận hành và bảo trì lâu dài luôn ạ. \\n\\nĐặc biệt là bên em sẽ lo toàn bộ phần kỹ thuật, máy chủ và tích hợp các công cụ marketing, anh/chị chỉ việc nhận web hoàn chỉnh và sử dụng thôi. \\n\\nKhông biết anh/chị đang tính làm website để giới thiệu doanh nghiệp hay là một trang landing page để chạy quảng cáo ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:34:45.177108+00
21	1910	{"type": "human", "content": "<p>Tôi có toàn quyền source code không hay bị lock lại?</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:35:00.655311+00
22	1910	{"type": "ai", "content": "Anh/chị yên tâm nha, bên em cam kết anh/chị sở hữu 100% mã nguồn và dữ liệu website luôn ạ. \\n\\nBBOTech triển khai theo hướng để khách hàng làm chủ hoàn toàn, không dùng nền tảng đóng độc quyền nên không bao giờ có chuyện bị \\"lock\\" đâu anh/chị. \\n\\nSau này mình muốn nâng cấp hay chuyển server thì đều toàn quyền quyết định hết ạ. Không biết hiện tại anh/chị đã có dự kiến chức năng nào bắt buộc phải có cho web của mình chưa ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:35:00.827264+00
23	17	{"type": "human", "content": "hello", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:35:08.886924+00
24	17	{"type": "ai", "content": "Dạ em chào anh/chị, em là chuyên viên tư vấn của BBOTech - Phòng IT Online cho doanh nghiệp SME ạ. \\n\\nKhông biết hiện tại bên mình đang quan tâm đến giải pháp công nghệ nào, hay đang gặp khó khăn gì trong quá trình vận hành ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:35:09.050289+00
25	17	{"type": "human", "content": "Tôi là Cường, tôi muốn tìm hiểu dịch vụ", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:35:38.34144+00
26	17	{"type": "ai", "content": "Dạ em chào anh Cường. Bên em chuyên triển khai các hệ thống như Website, Chatbot đa kênh, Email Marketing và tự động hóa quy trình (AI Automation) cho SME. \\n\\nThay vì gửi một list dài, anh chia sẻ chút về khó khăn hiện tại bên mình để em tư vấn đúng trọng tâm nhé. \\n\\nAnh đang muốn tập trung tối ưu khâu tìm kiếm khách mới, chăm sóc khách hàng hay tự động hóa vận hành nội bộ ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:35:38.508876+00
27	1910	{"type": "human", "content": "<p>Tôi đã hỏi những gì</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:35:39.210251+00
28	1910	{"type": "ai", "content": "Dạ nãy giờ anh/chị có hỏi em hai phần chính là tổng quan dịch vụ web và quyền sở hữu source code đó ạ. \\n\\nEm cũng có chia sẻ là bên em nhận làm web trọn gói và sẽ bàn giao 100% mã nguồn cho doanh nghiệp mình luôn. \\n\\nKhông biết anh/chị có đang lăn tăn thêm về chi phí hay thời gian triển khai dự án không ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:35:39.376355+00
29	1910	{"type": "human", "content": "<p>Sau này tôi muốn đổi bên khác, việc chuyển giao có khó không?</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:36:25.166153+00
30	1910	{"type": "ai", "content": "Nhiều khách hàng bên em trước đây cũng hay lo bị phụ thuộc như vậy nên em rất hiểu ạ. \\n\\nNhưng anh/chị yên tâm, BBOTech bàn giao 100% dữ liệu và mã nguồn gốc, không trói buộc vào nền tảng riêng nên việc chuyển nhà cung cấp sau này cực kỳ dễ dàng. \\n\\nĐể em phân tích rõ hơn cách bên em thiết lập hệ thống để anh/chị dễ quản lý, mình tiện cho em xin số điện thoại hoặc book một buổi họp ngắn tầm 15 phút nhé?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:36:25.329135+00
31	17	{"type": "human", "content": "dịch vụ Chatbot đa kênh thế nào", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:36:57.321091+00
32	17	{"type": "ai", "content": "Dạ Chatbot đa kênh bên em giúp anh quản lý tin nhắn từ Zalo, Fanpage, Website... tập trung tại một nơi duy nhất. Điểm đặc biệt là bot sẽ học từ chính tài liệu, báo giá và thông tin nội bộ của công ty mình để tư vấn tự nhiên như một nhân viên thực thụ. \\n\\nPhần kỹ thuật cài đặt và bảo trì hệ thống bên em sẽ lo toàn bộ nên anh Cường yên tâm nhé. Hiện tại bên mình đang nhận nhiều tin nhắn từ khách hàng qua kênh nào nhất vậy anh?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:36:57.488582+00
33	17	{"type": "human", "content": "Chatbot của bạn là AI thật hay chỉ là kịch bản if-else?", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:37:57.005128+00
34	17	{"type": "ai", "content": "Chatbot bên em là sự kết hợp của cả hai để mang lại hiệu quả tốt nhất và an toàn nhất cho doanh nghiệp ạ. Với những quy trình quan trọng như xin thông tin khách hay chốt sale, bot sẽ đi theo kịch bản chuẩn để không bị sót ý. Còn với những câu hỏi đa dạng, AI sẽ tự động đọc hiểu tài liệu riêng của bên anh để tư vấn linh hoạt như một nhân viên thật. \\n\\nAnh Cường muốn dùng bot chủ yếu để tư vấn dịch vụ hay để thu thập số điện thoại khách hàng ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:37:57.168307+00
35	1910	{"type": "human", "content": "<p>Bên bạn có tối ưu SEO kỹ thuật hay chỉ build giao diện?</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:38:45.237547+00
36	1910	{"type": "ai", "content": "Dạ bên em không chỉ làm giao diện đâu ạ, phần Technical SEO sẽ được tối ưu sẵn ngay từ lúc code web luôn. \\n\\nCác yếu tố như tốc độ tải trang, cấu trúc URL, thẻ meta hay sitemap đều được setup chuẩn chỉnh để Google dễ dàng đọc hiểu website của mình. \\n\\nViệc này giúp anh/chị có một nền tảng kỹ thuật vững chắc để sau này đẩy SEO lên top thuận lợi hơn rất nhiều ạ. \\n\\nKhông biết hiện tại anh/chị đã có đội ngũ SEO/content riêng chưa, hay mình dự định sẽ tự triển khai ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:38:45.402049+00
37	17	{"type": "human", "content": "Tôi sợ chatbot trả lời sai thông tin → mất khách. Bạn kiểm soát việc này thế nào?", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:38:52.064174+00
38	17	{"type": "ai", "content": "Dạ nhiều anh/chị lúc mới dùng cũng lo lắng giống anh Cường về vấn đề này. Bên em sẽ thiết lập giới hạn để bot CHỈ được phép trả lời dựa trên tài liệu chuẩn của công ty mình, nếu khách hỏi câu quá khó bot sẽ tự động chuyển sang cho nhân viên thật xử lý. \\n\\nHằng tháng bên em cũng sẽ theo dõi lịch sử chat và tinh chỉnh lại bot liên tục nên anh hoàn toàn yên tâm nha. Hiện tại bảng giá và thông tin dịch vụ bên mình đang lưu ở dạng file Word, PDF hay trên Website vậy anh?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:38:52.228272+00
39	1911	{"type": "human", "content": "<p>xin chào</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:50:07.84379+00
40	1911	{"type": "ai", "content": "Dạ em chào anh/chị, em là chuyên viên tư vấn của BBOTech - \\"Phòng IT Online\\" cho doanh nghiệp đây ạ. \\n\\nKhông biết hiện tại bên mình đang cần hỗ trợ tối ưu quy trình hay tìm kiếm giải pháp công nghệ nào không anh/chị nhỉ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:50:08.011236+00
41	1911	{"type": "human", "content": "<p>cho mình xin tư vấn về website</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:50:39.296856+00
42	1911	{"type": "ai", "content": "Dạ, dịch vụ làm website bên em được thiết kế theo dạng phòng IT online, tức là làm xong tụi em sẽ lo luôn khâu vận hành, bảo trì hằng tháng chứ không phải bàn giao xong là bỏ đó đâu ạ. \\n\\nĐể em tư vấn chuẩn xác nhất, anh/chị đang cần làm website giới thiệu doanh nghiệp hay dạng landing page để chạy quảng cáo bán hàng ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:50:39.46379+00
43	1911	{"type": "human", "content": "<p>mình đang muốn làm landing page á bạn</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:51:29.572272+00
44	1911	{"type": "ai", "content": "Dạ bên em chuyên thiết kế landing page tối ưu chuyển đổi để chạy quảng cáo, ra mắt sản phẩm hoặc thu thập data khách hàng ạ. Tụi em sẽ lo trọn gói từ thiết kế giao diện, tối ưu tốc độ tải đến tích hợp sẵn các công cụ tracking như Facebook Pixel, Google Analytics luôn. Phần kỹ thuật bên em xử lý hết nên mình chỉ cần tập trung vào kinh doanh thôi ạ. \\n\\nAnh/chị định làm landing page cho ngành hàng nào để em gửi vài mẫu cho mình tham khảo ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:51:29.740539+00
45	1911	{"type": "human", "content": "<p>thì cho mình hỏi là làm landing page vậy tầm bao lâu bạn</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:51:49.061521+00
46	1911	{"type": "ai", "content": "Dạ thông thường một landing page hoàn chỉnh bên em triển khai mất tầm 1 đến 2 tuần ạ. Thời gian này đã bao gồm từ khâu lên thiết kế, lập trình, đến lúc test kỹ càng các công cụ đo lường trước khi chạy thực tế luôn. \\n\\nMình đang cần làm gấp để chạy chiến dịch hay mới trong giai đoạn tham khảo thôi anh/chị ơi?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:51:49.225367+00
47	1911	{"type": "human", "content": "<p>chi phí như nào nhỉ?</p>\\n", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 02:51:57.397329+00
48	1911	{"type": "ai", "content": "Dạ bên em không có bảng giá cố định, vì tụi em tính phí sát theo đúng nhu cầu thực tế của mình để tránh lãng phí ạ. Chi phí sẽ gồm phần setup ban đầu và một khoản duy trì vận hành hằng tháng (bên em lo trọn gói server, bảo trì, xử lý lỗi kỹ thuật). \\n\\nĐể tiện tính toán và lên báo giá chuẩn xác nhất, anh/chị cho em xin số Zalo để em gọi trao đổi nhanh tầm 5 phút nhé?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 02:51:57.561219+00
49	17	{"type": "human", "content": "còn dịch vụ gì", "additional_kwargs": {}, "response_metadata": {}}	2026-04-09 06:48:20.238067+00
50	17	{"type": "ai", "content": "Dạ ngoài Chatbot, bên em còn triển khai Website, hệ thống Email Marketing và tự động hóa quy trình (AI Automation) ạ. Tuy nhiên để không làm mất thời gian với một danh sách dài, em muốn tập trung vào đúng giải pháp giải quyết được khó khăn thực tế của bên mình. \\n\\nNgoài khâu tư vấn khách hàng, anh Cường có đang thấy quy trình nội bộ nào khác bị tốn quá nhiều thời gian làm thủ công không ạ?", "tool_calls": [], "additional_kwargs": {}, "response_metadata": {}, "invalid_tool_calls": []}	2026-04-09 06:48:20.405421+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

COPY "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: n8n_chat_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."n8n_chat_histories_id_seq"', 50, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict tXTCrfjJWWDiTgwwzPGonChw9pCd3OjQGzbPvyNDpJjjMu4Ngi4W6adiGx084ga

RESET ALL;
