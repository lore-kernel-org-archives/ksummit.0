Return-Path: <BATV+5ee24d0f248eb13d5bd2+4989+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FE93C39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 17:07:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF5C9142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 17:07:09 +0000 (UTC)
Date: Fri, 21 Apr 2017 14:06:58 -0300
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20170421140658.407133e3@vento.lan>
In-Reply-To: <87vapyauj7.fsf@concordia.ellerman.id.au>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
	<87vapyauj7.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 21 Apr 2017 21:07:24 +1000
Michael Ellerman <mpe@ellerman.id.au> escreveu:

> James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> 
> > On Tue, 2017-04-18 at 11:59 -0700, Linus Torvalds wrote:  
> >> I'd like the maintainership summit list to be fairly small. Not even
> >> 50 people. Maybe 30. A group that can actually sit in a room for half
> >> a day and talk to each other about the issues they have rather than
> >> being talked to. And talk literally about *process* issues, not about
> >> any particular technical issues within whatever subsystem. Bring up
> >> peeves or wishes for actual process improvements?
> >> 
> >> Comments? People who should be involved? Or people who don't have any
> >> particular issues and want to not be involved?  
> >
> > I'd like closure on one process issue, if we could achieve it:
> >
> > Maintainer script automation: Quite a few of us have maintainer scripts
> > that send automated email notifications of the status of patches in the
> > tree (mostly to stop people flooding the lists with questions about
> > what happened to their patches).  We did a script show and tell at the
> > last kernel summit, but perhaps we could get closure on a couple of
> > issues:
> >
> >    1. Since most people agree that these form of notifications are useful,
> >       should we have a standard email for it (or at least a list of things
> >       which should be in that email, like commit-id, tree, maintainer,
> >       mailing list and the version of the kernel it is expected to be
> >       pushed for).  
> 
> We could have suggestions, I'm not sure an actual standard is feasible
> given the differences in the processes people use.
> 
> >    2. Given that we all run ad-hoc infrastructure to produce these emails,
> >       could we get a set of blessed scripts up on kernel.org for all
> >       comers so we can use the central infrastructure rather than rolling
> >       our own.  
> 
> This would be great.
> 
> But is there actually a set of scripts out there which are in
> sufficiently good state that we could ask the kernel.org admins to run
> them?
> 
> If the mail sending happens on kernel.org how do the scripts know which
> mail to respond to for a given commit? It could be in the commit message
> somehow, but that's ugly. My scripts use git-notes for that sort of
> metadata, which works quite well, so maybe that's an option.
> 
> Or maybe you're thinking that they don't reply to the original patch,
> they just mail the author?
> 
> There's also times when you push commits that have already been
> responded to by someone else (ie. a submaintainer), so there'd need to
> be some way to flag that. And then obviously the case where you fast
> forward to Linus' branch, you don't want to send mails for all those
> commits :)

The script I posted on my past e-mail handles it using two algorithms:

	- It checks for the committer e-mail. If the patch isn't
	  committed by me, it skips the patch;

	- It prevents sending more than a certain number of e-mails,
	  with is configurable at git config file. That prevents
	  mailbomb patches that I committed via some other tree
	  (like edac).

With those two rules, automatic mailbomb actually looks OK.

> Another thing that's nice is to only send one mail when you merge a big
> series, which complicates things a bit more.

That would be interesting, but prevents pushing the actual patch.
In our case, we mailbomb patches also to a mailing list, allowing
others to review and comment on patches actually applied.

Thanks,
Mauro
