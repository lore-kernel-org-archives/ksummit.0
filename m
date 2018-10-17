Return-Path: <geert@linux-m68k.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EF262ECC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 08:31:57 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 958F86E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Oct 2018 08:31:56 +0000 (UTC)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 17 Oct 2018 10:26:48 +0200
Message-Id: <20181017082648.919-1-geert@linux-m68k.org>
Cc: linux-kernel@vger.kernel.org,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Tomi Valkeinen <tomi.valkeinen@iki.fi>
Subject: [Ksummit-discuss] [PATCH v2] code-of-conduct: Remove explicit list
	of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Providing an explicit list of discrimination factors may give the false
impression that discrimination based on other unlisted factors would be
allowed.

Avoid any ambiguity by removing the list, to ensure "a harassment-free
experience for everyone", period.

Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Frank Rowand <frowand.list@gmail.com>
Acked-by: Arnaldo Carvalho de Melo <acme@kernel.org>
Acked-by: Tomi Valkeinen <tomi.valkeinen@iki.fi>
---
v2:
  - Add Acked-by.

The use of "race" may also conflict with the United Nation's views on
this matter, cfr. e.g. the UNESCO's "Four statements on the race
question"[1][2] and "Declaration on Race and Racial Prejudice"[3].

[1] https://en.wikipedia.org/wiki/The_Race_Question
[2] http://unesdoc.unesco.org/images/0012/001229/122962eo.pdf
[3] http://portal.unesco.org/en/ev.php-URL_ID=13161&URL_DO=DO_TOPIC&URL_SECTION=201.html
---
 Documentation/process/code-of-conduct.rst | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index ab7c24b5478c6b30..e472c9f86ff00b34 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -6,10 +6,7 @@ Our Pledge
 
 In the interest of fostering an open and welcoming environment, we as
 contributors and maintainers pledge to making participation in our project and
-our community a harassment-free experience for everyone, regardless of age, body
-size, disability, ethnicity, sex characteristics, gender identity and
-expression, level of experience, education, socio-economic status, nationality,
-personal appearance, race, religion, or sexual identity and orientation.
+our community a harassment-free experience for everyone.
 
 Our Standards
 =============
-- 
2.17.1
