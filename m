Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4749D89F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 04:50:07 +0000 (UTC)
Received: from omzsmtpe02.verizonbusiness.com (omzsmtpe02.verizonbusiness.com
	[199.249.25.209])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B0CA202
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 04:50:05 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Fri, 26 Aug 2016 00:46:51 -0400
Message-ID: <20160826044651.GA25341@sasha-lappy>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

Appologies for the late mail - betweem workplace change (and ML mails bounc=
ing off the old @oracle.com mail), and some personal stuff, I've missed the=
 fact that planning and discussions have already started!

I wanted to discuss a variety of topics regarding stable kernels, testing, =
and testing stable kernels:

 - My new employer is a heavy user of "cutting edge" stable kernels, and as=
 such I'm looking into ways to improve the process. Making people complain =
and express their unhappiness with concrete workflows is a good way for me =
to make improvements on my end.

 - Automating the while -stable process further: it's too dependant on huma=
ns getting things right which is a recipe for disaster. I have a few propos=
als about how to reduce the human aspect of it further to improve the quali=
ty of the resulting trees (expanding stable-tools even further!).

 - We need to figure out ways to integrate tests better, beyond the usual 3=
 day review window we have for "testing" where no *actual* user tests anyth=
ing. In the example of Verizon, it simply doesn't fit in the workflow and w=
e'd need to make a good amount of modifications to make it happen, so I bet=
 it's the same issue for other users of the tree.

 - Reviewing the stable rules and adjusting them to reality. There's a mism=
atch between what the rules say and what actually happens.

 - A few smaller ideas I want to bounce off maintainers:

   - Adding stable@ tags to commits is "complicated", it requires editing t=
he commit message which is an extra step that people are too lazy to take, =
how can we improve that?

   - Making checkpatch check for (some) of the stable kernel rules (and pos=
sibly recommend adding the stable@ tag in certain cases?).
     - Depends on: making checkpatch sane again.

   - Improving tagging for stable. The "version tag" option is broken and t=
he "Fixes:" tag is always preferable, how do we get people to use that more=
 often? (script it somehow? scripts/find-version-it-fixes ?).

--=20

Thanks,
Sasha=
