Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E53ED6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 08:04:51 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F76A9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 08:04:51 +0000 (UTC)
Date: Sun, 28 Aug 2016 10:04:59 +0200
From: Greg KH <greg@kroah.com>
To: Jeremy Allison <jra@samba.org>
Message-ID: <20160828080459.GC1370@kroah.com>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<20160827230210.GA6717@jeremy-acer>
	<20160827225842.3f93f26d@gandalf.local.home>
	<20160828043401.GB8742@jeremy-acer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160828043401.GB8742@jeremy-acer>
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

On Sat, Aug 27, 2016 at 09:34:01PM -0700, Jeremy Allison wrote:
> On Sat, Aug 27, 2016 at 10:58:42PM -0400, Steven Rostedt wrote:
> > 
> > I'm not sure Greg's answer is really "never". But I think this is
> > similar to the analogy of dealing with rogue nations. Going to war is
> 
> It seemed pretty clear to me that Greg's answer was that there
> was no possible situation where he would countenance an enforcement
> lawsuit against a GPL violator.
> 
> I really don't want to put words in anyones mouth or misread their
> intent so if I am mistaken or misread what he wrote I'd love to be
> corrected here.

Ok, I'm not saying "never should legal action be taken", but what I am
saying is the same thing that Linus said, "only under the most dire
circumstances", the nuclear option.

So yes, if someone takes all of our source code, slaps a different
license on it and calls it something else, I would be first in line to
call up my lawyer to get them to stop doing that.  But that's never been
the case here.

What is the case is that so far, I have seen that it is _ALWAYS_ better
to work with the offending company than it is to go in with lawyers.  Or
representatives.

Go back and read my response to Bradley again and think about what a
company goes through when someone shows up knocking at their door saying
"I am a representative of copyright holders of the kernel, and want you
to release all the code you are shipping."  They batten down the hatches
and work to fight against it for all of the reasons I already gave.

Compare that to a _developer_ going to that same company, finding the
engineers who wrote that code, and asking them "hey, need any help in
getting your code merged upstream to make your lives easier for your
next product?"

Now you can work with that company, getting them to upstream bits and
pieces of their code, until they are suddenly really invested in this
community much more so than before and they see the business benefit of
working together.

It's a totally different question, approach, and in the end, our way
works, while the SFC's way does not.

I object to the SFC's position of "let us handle those pesky copyright
issues for you" (paraphrased), as when a developer does that, they give
up the real power that they have.  The SFC's a one-trick pony (give us
the code, all of it, throw it over the wall or we will sue), while as a
developer, I have 101 tricks I can use to achieve even a better
end-solution (the company is part of the community, not alienated by
it.)

Developers are in a more powerful position than they realize, and I
object to the SFC taking that power away.  In fact, the SFC _needs_
developers in order to even be in business, if no developer signs their
agreements, there's nothing for them to do!

So I strongly support developers getting the rights to their copyrights,
not because it can be then used as a legal club to wield against others,
but as a way to help ensure that their company continues to always
invest and support Linux, as they know it works out better when everyone
has a stake in it, not just individuals, and not just corporations.

We really are one big happy family here, but when the SFC (or the FSF)
gets involved, we start bickering and problems happen.  It did so with
Busybox, and it is now doing so in Linux.  And I don't want that to
happen.

thanks,

greg k-h
