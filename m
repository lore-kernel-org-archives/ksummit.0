Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 44E27CB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 Nov 2018 00:13:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0157.hostedemail.com
	[216.40.44.157])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id BA6B71DCE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 Nov 2018 00:13:24 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 89A541801A138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 Nov 2018 21:48:03 +0000 (UTC)
Message-ID: <5ec49e90721b2cfde6faa3cc0df91759b602e7d8.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Date: Sat, 10 Nov 2018 13:47:57 -0800
In-Reply-To: <20181110212159.GA12818@thunk.org>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<41b03a5b-1af4-0a87-2736-016f79d4d1ca@kernel.org>
	<20181109190305.GD21078@thunk.org>
	<e0ec26aa685f53e741f66e757a2cf29307ce3b7e.camel@perches.com>
	<20181110212159.GA12818@thunk.org>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2018-11-10 at 16:21 -0500, Theodore Y. Ts'o wrote:
> On Fri, Nov 09, 2018 at 11:23:26AM -0800, Joe Perches wrote:
> > I believe that did not happen as described as at least
> > I was not asked for input/comment/sign-off and I ahm
> > well within that top 200 or so list.
> 
> I'm not sure precisely which metrics Greg used when he created his
> list, but using "git log --since="July 2017" v4.18" and piping it into
> the perl script I use to count Signed-off-by, Acked-by, and
> Reviewed-by, lines, you're about #240; so you're in the top 250, but
> not the top 200.

Acks are nearly useless as a metric.
Non-primary Sign-offs are less so.

By author is a rather more useful one.

$ git shortlog -n -s --since=<foo>

Separating whitespace/checkpatch style patches
from actual defect fixes and other enhancements is,
of course, a more difficult automation problem.
