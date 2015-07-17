Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57760323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:43:29 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com
	[216.40.44.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DE480142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 19:43:28 +0000 (UTC)
Date: Fri, 17 Jul 2015 15:43:26 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: josh@joshtriplett.org
Message-ID: <20150717154326.6f129bc4@gandalf.local.home>
In-Reply-To: <20150717190223.GB1499@cloud>
References: <20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 17 Jul 2015 12:02:23 -0700
josh@joshtriplett.org wrote:


> > --- Some Maintainer's prefer these styles ---
> > 
> >  These are some extra styles that maintainers prefer. Some are strict
> >  about these, others may not care. It doesn't hurt to add them.
> 
> A world of *no*.  If your style is not universal, and you can't get a
> general consensus among kernel maintainers that it should be a
> requirement across the entire kernel, then *no*.  We should not have
> per-subsystem formatting rules.
>

Um, we have it today, and we'll have it tomorrow. Sorry, but the Linux
kernel is not run by management. It's a huge community effort with
some of the brightest minds in the world working on it. Each subsystem
of the kernel is a project in itself. We're lucky we have the consensus
that we have.

 
> > /*
> >  * What is the question?
> >  * To add a space at the top of a comment?
> >  */
> > 
> > /* Or not to add a space at the top of a comment?
> >  * That is the question!
> >  */
> 
> While I'm not going to advocate that we mass-fix existing code in a
> subsystem for consistent formatting, this is *exactly* the kind of thing
> that we do not need any more of; one such idiosyncrasy is one too many.

Then there's no issue here. Each maintainer is free to tell people to
x-mas tree their variables or not. Look, kernel development is complex
and if your biggest hangup of getting a patch into the kernel is that
the maintainer requires you to modify some whitespace on rearrange your
variables, then you probably should get out of kernel development and
enter a field of bike shed exterior design.

-- Steve
