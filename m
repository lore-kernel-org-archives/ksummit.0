Return-Path: <jra@samba.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 190439D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 23:02:23 +0000 (UTC)
Received: from hr2.samba.org (hr2.samba.org [144.76.82.148])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26F7AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 23:02:22 +0000 (UTC)
Date: Sat, 27 Aug 2016 16:02:10 -0700
From: Jeremy Allison <jra@samba.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160827230210.GA6717@jeremy-acer>
Reply-To: Jeremy Allison <jra@samba.org>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160827162655.GB27132@kroah.com>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 27, 2016 at 06:26:55PM +0200, Greg KH wrote:
> 
> Again, when the lawyers get involved, you have lost.  I know you feel
> that you have to get lawyers involved to "win" the last bit of a fight,
> but really, that's pointless, because you just lost.

This seems to be your answer to the question:

"Can you describe the conditions you personally would feel justify
filing a lawsuit over GPL non-compliance ?"

and your answer is "never".

That's a valid answer, and I respect that.

However, other Linux devs feel differently as they joined the
Conservancy GPL Compliance Project For Linux Developers. There
are licenses that embody the "no consequence for non compliance"
attitude, the most popular being the BSD or MIT licenses of course.

Indeed there are popular alternative kernels under those
licenses as I'm sure you're aware.

But they are not the license you have. You have the GPL.

The GPL allows legal penalties for non-compliance. We
know this as there have already been such.

Your project has been enourmously successful - more so
than any other Free Software project in the world. And it
did so under the GPL.

You now appear to want to change the conditions under which
most contributors added code - to one that has no legal
penalties for non-compliance with the license.

If you really want that I'd genuinely be interested in you
making such a proposal to the Linux kernel developers and
askng them to change the license. Not being a kernel developer
(other than some small cifsfs changes) I have no skin in the
game but I'd love to see the results of that vote, I think
it would be fascinating (and I give no predictions as to which
way that vote would go).

But at that point you would have the condition you articulate
above. You could ask non-compliant companies to send in code,
and keep patiently working with them if they refused.

I do feel I should point out to you that this strategy has
not worked with Apple, EMC, Isilon or NetApp - all of whom
have significant kernels based on code under the BSD license
but have refused to return any valuable code to the parent
project.

But maybe the FreeBSD devs haven't just given them enough
time or been nice enough to them or asked them enough times.

Maybe this experiment will turn out in their favour, it may
be too early to tell (and Samba works on all the *BSD's so
I'm ok either way :-).

In the meantime if you want to work on a kernel with your
preferred license could you please fix the missing per-thread
credentials in FreeBSD ? Samba has been needing that for years
now (almost as long as I've been needing RichACLs in Linux :-).

> Both you and Karen keep saying "we have to know and defend this", but
> that's what burned Busybox to the ground, and is what is threatening the
> future of gcc as well.  It's great that Samba has survived this type of
> enforcement effort, but as Jeremy has pointed out, he's done that
> primarily by working directly with the companies, not having legal
> people get involved.  So thanks Jeremy for proving my point :)

If you think that was the point I was making, I feel you didn't
understand what I said.

I said that the outcome of lawsuits wasn't always the "loss" you
seem to claim, and that the Microsoft vs EU lawsuit (although not
a compliance-based one) is an excellent counterexample. Everyone
in that lawsuit ended up winning, even Microsoft (give or take a
billion dollars or so, which is pocket change for them :-).

When I do compliance work for Samba - before Conservancy ever
hears about it (because I'm talking developer to developer),
I'd like to think the companies I work with talk to me because
I'm a nice guy and very helpful.

But on more than one occasion when I've been talking to the devs
they also arrange a meeting with their legal staff involved.

What they always want to ask is if what we have architected
or discussed together is sufficient to comply with their responsibilities
under the GPL.

The reason they take me seriously, and I even get a seat at the table,
is because of the work that Conservancy (and others) have done to
ensure that GPL compliance is something that must be respected.
Would I get a conversation going without that ? Maybe - but on
more than one occasion I've only ever had a callback from the
developers *after* I've sent a notice to the company they they
are violating our license, a situation which if it continued
could lead to real legal consequences for their products.

> So please stop this now, it's not helpful, but instead, hurtful, and
> harmful to our very survival.

Greg, that's insulting to the hard work by Karen and Bradley
and Conservancy staffers and is such a naive statement I find
it hard to believe you believe it.

It reminds me of the "if only the lawyers would leave us alone
we'd live in a sunshine paradise of unicorns and rainbows - us
developers together" attitude I used to have back in the early
1990's when I first discovered the GPL.

You are second in command of a project that has generated literally
*trillions* of dollars of revenue around the world and you think
that involvement in legal issues is hurtful and harmful to the survival
of that project.

I have news for you - Linux passed out of that phase around
1.10 in 1994 when you first got TCP/IP support (I think I
have the history right, it was around then we decided to
port Samba from SunOS to Linux as you finally had networking :-).

Dealing with legal and compliance issues is *mandatory* for all
open source projects larger than one developer and their dog
with a github account.
