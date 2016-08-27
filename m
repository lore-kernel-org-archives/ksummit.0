Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B6E525A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 16:26:47 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 918AE125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 16:26:46 +0000 (UTC)
Date: Sat, 27 Aug 2016 18:26:55 +0200
From: Greg KH <greg@kroah.com>
To: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
Message-ID: <20160827162655.GB27132@kroah.com>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87inunxf14.fsf@ebb.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
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

On Fri, Aug 26, 2016 at 04:54:15PM -0700, Bradley M. Kuhn wrote:
> > Because right now, I'm getting some _very_ mixed messages.
> 
> ... a wise man once said, "talk is cheap; show me the code".  So, judge me by
> my actual actions, not by twisting my words.  It's easy to do because all
> this work has been done transparently.  As a public charity, you can look at
> Conservancy's 990s and see all financial details related to GPL enforcement.
> As I said in another post, in more than ten years, Conservancy has been
> involved in exactly *two* lawsuits, with plenty of public documentation of
> what happened there.  Recently, I and Karen were the *only* ones who were
> willing to publicly criticized Patrick McHardy for being unnecessarily
> litigious and non-transparent [1].  Overall, we only began the GPL Compliance
> program for Linux developers because developers *asked* for it.  We remain
> accountable to them.  We published the Principles of Community-Oriented GPL
> Enforcement, which were endorsed and/or lauded by many Linux developers,
> including the entire Netfilter team, as well as other charitable
> organizations including FSF, FSF Europe and the Open Source Initiative.
> 
> 
> I *think* you are saying that I'm doing something wrong and hurting Linux.
> I'm not only willing to hear you on that -- in fact, I am alarmed and want to
> understand immediately what it is.

As I said earlier, you are somehow saying that if we don't "defend" the
GPL in courts, we need to give up on it.

And that's just flat out not true, as I said before.

Your LCA talk this past year, which is online, you say many things about
how the BusyBox lawsuits worked out (caused the creation of Toybox), how
LLVM came about (supported because companies didn't want to deal with
the FSF and GPLv3), and how that the only thing left to "fight over" is
Linux.

I don't want to fight.  For when you start fighting like this, you have
lost, as I, and Linus now, keep pointing out.

Again, when the lawyers get involved, you have lost.  I know you feel
that you have to get lawyers involved to "win" the last bit of a fight,
but really, that's pointless, because you just lost.

Someone in a reddit thread about this email conversation said, in trying
to quote Linus, something along the lines of "the nuclear option should
have been done to Allwinner a long time ago".  And that proved my point
exactly.  Allwinner was a pain for a very long time.  But as developers,
and through the efforts of a lot of people at the Linux Foundation and
Linaro, Allwinner is now a contributor to the kernel, and actively
sponsors developers to write GPLv2 code for their chips.  So, if, after
talks like yours (between a representative of a kernel copyright holder
and the company) breaks down, you would be forced to take legal action.
And then we lost, even if you would have "won" the suit.

Seriously, this is NOT how to to things.  Over the years yes, my
position has changed from being pissed when I see devices ship without
code for their changes, to realizing that I actually can do much more
than any lawyer can.  I can take those developers and make them part of
our own project, ensuring we can survive.

Also, in your LCA talk you say about Linux kernel modules, and if I get
this quote wrong, please let me know,
	"And we’re going to have to actually adjudicate that, we don’t
	have a choice now. I used to shy away from this because it’s
	considered so controversial but we won’t have copyleft if we
	don’t have this confrontation."

And that's a very dangerous thing to say, or do.  Because again, if you
want to adjudicate this, that means you are willing to loose.

I told you this in the lobby of LinuxCon last year in Ireland around a
table with many others present.  You value the GPL over Linux, and I
value Linux over the GPL.  You are willing to risk Linux in order to try
to validate the GPL in some manner.  I an not willing to risk Linux for
anything as foolish as that.  And I told you that then in front of a
small audience, and am willing to do so now in front of a much larger
one.

Both you and Karen keep saying "we have to know and defend this", but
that's what burned Busybox to the ground, and is what is threatening the
future of gcc as well.  It's great that Samba has survived this type of
enforcement effort, but as Jeremy has pointed out, he's done that
primarily by working directly with the companies, not having legal
people get involved.  So thanks Jeremy for proving my point :)

Let's please stick to what has gotten us this far, and not change to
being rude and disrespectful to our users and developers by getting
lawyers involved.  That way we know will cause us to fail.

I routinely say that the only thing that will cause Linux to fail is if
we do something stupid to ourselves, it's not going to happen by
something outside of us.  I see this as one of those extremely stupid
things that we could easily do to ourselves that would cause us
to fail.

Again, learn from history, suing people is not the way to survive.
Working with the developers is the way.  As companies like Intel (who
used to be one of the worse offenders of the GPL out there before
members of our community worked very hard to turn them around) and
Allwinner and RockChip (getting more and more involved in our community)
and even Microsoft (who now gets huge revenue from running Linux and is
sponsoring kernel development because of this).

Look at the existing vendors you see today as not as "offenders" but
rather as "potential members of our community" and treat them that way.
It is the way we will continue to survive and grow.  To not do so, is to
kill off our own future.

Do you know who the next "Intel" will be as a huge corporate sponsor of
Linux developers and intrinsic to our future?  I sure don't, but I do
know that by treating offenders with lawyers, you ensure that they never
will be that type of supporter.

It's just like we treat new developers, you never know who will start
out with just one patch, realize it's a lot of fun, and continue on to
becoming a core developer.  I started that way, and so did everyone
except Linus.  You have to treat everyone with respect in order to
ensure that you can grow and survive.

So please stop this now, it's not helpful, but instead, hurtful, and
harmful to our very survival.

greg k-h
