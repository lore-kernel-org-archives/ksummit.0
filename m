Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FC2E40C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:02:27 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3D9114F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:02:26 +0000 (UTC)
Date: Fri, 17 Jul 2015 12:02:23 -0700
From: josh@joshtriplett.org
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150717190223.GB1499@cloud>
References: <20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150717133712.42c82add@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 17, 2015 at 01:37:12PM -0400, Steven Rostedt wrote:
> On Fri, 17 Jul 2015 10:11:51 -0600
> Jonathan Corbet <corbet@lwn.net> wrote:
> 
> 
> > Over on linux-kernel, I just saw a newish developer being politely told
> > that a patch was unacceptable because the local variable declarations
> > were not in reverse-Christmas-tree order.  That's not in CodingStyle, and
> > it's certainly not a universal rule in the kernel; it's just one of those
> > things you have to know if you wander into certain scary neighborhoods.
> 
> As I know a few maintainers that like the "reverse-xmas-tree" order,
> perhaps we could add that to CodingStyle in a section of:
> 
> --- Some Maintainer's prefer these styles ---
> 
>  These are some extra styles that maintainers prefer. Some are strict
>  about these, others may not care. It doesn't hurt to add them.

A world of *no*.  If your style is not universal, and you can't get a
general consensus among kernel maintainers that it should be a
requirement across the entire kernel, then *no*.  We should not have
per-subsystem formatting rules.

> /*
>  * What is the question?
>  * To add a space at the top of a comment?
>  */
> 
> /* Or not to add a space at the top of a comment?
>  * That is the question!
>  */

While I'm not going to advocate that we mass-fix existing code in a
subsystem for consistent formatting, this is *exactly* the kind of thing
that we do not need any more of; one such idiosyncrasy is one too many.

- Josh Triplett
