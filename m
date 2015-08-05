Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5CD44486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:21:34 +0000 (UTC)
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D197611E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:21:33 +0000 (UTC)
Received: by qged69 with SMTP id d69so34879222qge.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 10:21:33 -0700 (PDT)
Date: Wed, 5 Aug 2015 13:21:30 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20150805172130.GB3061@gmail.com>
References: <20150801164142.653012af@lwn.net>
	<1438672367.9418.3.camel@ellerman.id.au>
	<9B190076-263A-4C51-AFA4-A1D7FD403BC3@holtmann.org>
	<BC939929-C5D1-4239-A9B8-E9D49CD4E04E@gmx.de>
	<55C242F4.7090005@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <55C242F4.7090005@gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 05, 2015 at 07:08:04PM +0200, Michael Kerrisk (man-pages) wrote:
> I know even less about Sphinx, although its output capabilities,
> as described at http://sphinx-doc.org/index.html , seem interesting also.

Markdown has vastly simpler syntax than ReST, which has the upside of
being easier to learn, and the downside of being quite limited. I mean,
it doesn't even do tables unless you use an extended flavour
(GitHub-flavoured MarkDown).

For this reason I would recommend ReST over MD.

I find rst2man to be a great way to quickly write decent manpages. E.g.:

https://raw.githubusercontent.com/mricon/grokmirror/master/man/grok-pull.1.=
rst

Which generates the following man page:

https://raw.githubusercontent.com/mricon/grokmirror/master/man/grok-pull.1

Many will attest that the .rst source is a lot easier on the eyes than
final groff.

Hope this helps.

Best,
--=20
Konstantin Ryabitsev
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec
