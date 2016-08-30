Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA018904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:15:19 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DE70A1D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:15:18 +0000 (UTC)
Date: Tue, 30 Aug 2016 20:15:28 +0200
From: Greg KH <greg@kroah.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20160830181528.GB19450@kroah.com>
References: <CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<87bn0dnc6f.fsf@ebb.org>
	<1472348609.2440.37.camel@HansenPartnership.com>
	<20160828042454.GA8742@jeremy-acer>
	<20160828125542.7oejzcbpeozkrq3k@thunk.org>
	<20160830161557.GN3296@wotan.suse.de>
	<20160830164540.GA4925@kroah.com>
	<20160830172033.GP3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160830172033.GP3296@wotan.suse.de>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
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

<fixing Jeremy's email address, Luis, your email client broke it...>

On Tue, Aug 30, 2016 at 07:20:33PM +0200, Luis R. Rodriguez wrote:
> On Tue, Aug 30, 2016 at 06:45:40PM +0200, Greg KH wrote:
> > On Tue, Aug 30, 2016 at 06:15:57PM +0200, Luis R. Rodriguez wrote:
> > > On Sun, Aug 28, 2016 at 08:55:42AM -0400, Theodore Ts'o wrote:
> > > > On Sat, Aug 27, 2016 at 09:24:54PM -0700, Jeremy Allison via Ksummit-discuss wrote:
> > > > > Your opinion on that is clear and I understand why you hold it.
> > > > > There are many other developers who hold the same opinion, but
> > > > > lots of them work on FreeBSD not Linux.
> > > > > 
> > > > > Respectfully, I don't agree with you. Greg and Ted seem to agree
> > > > > with you, Linus (like me) seems to imagine there can be a case for
> > > > > that shiny red button.
> > > > 
> > > > For the record, I believe there can be a case for the shiny red
> > > > button.  I just want Linus, and not the SFC (or some --- as admitted
> > > > by the SFC --- minority set of developers), to be the one who decides
> > > > when it's appropriate to push it.
> > > > 
> > > > I've said it before, and I've said it again.  For me, this is much
> > > > more about a project governance issue.  We don't let random pissed off
> > > > army officers decide when to start World War III. 
> > > 
> > > If you are trying to equate "random pissed off officers" with those kernel
> > > developers part of the SFC alliance, then I have to say that is perhaps one of
> > > the most stupid misrepresentations of members of SFC that I have heard so far.
> > > Unless of course your statement is educated, you know all members part of SFC
> > > and have asked each one why they joined.
> > 
> > That brings up a question, who exactly is the SFC representing here?
> 
> I've come out:
> 
> http://www.do-not-panic.com/2016/02/im-part-of-conservancys-gpl-compliance.html
> 
> Others have as well. We don't force people to come out though obviously, so its
> optional. Some folks would prefer their association to remain private. That's
> a right they should have.

It's something you would "loose" if you actually file for something.
And for the SFC to approach a company with a vague "we have random
copyrights, give us the code!" that message is horrid!

Go back and read my long email about what happens at a company when they
are approached by a "representative", and not a developer.  Especially
one that makes lots and lots and lots of public statements about how
companies are evil, how Linux is the GPL's ultimate test case, how they
want to use the courts to clarify the GPL's "grey areas".  All of these
have been stated numerous times by the leadership of the SFC as recently
as a few months ago.

Again, that is NOT how to create and sustain a community.  That's how
you set fire to it and watch it burn.  It happened to Busybox and I
don't want it to happen here to Linux.

> What do you think? Did it ever cross your mind to consider joining ?

Sure, many years ago.  And I'm glad I never signed the document that
Bradley gave me many years ago at LinuxCon as it would have been a bad
idea (not to mention that people giving developers random legal
documents to sign at a conference really isn't a wise thing on either
parties involved...)  As I mentioned my discussion with Bradley last
year, at LinuxCon, I did not want him to continue to do this as it is
not how you create a community.

Again, the SFC puts the GPL before Linux, and is willing to do things to
make Linux fail if it somehow finally answers their unresolved questions
about the GPL[1].

For a group of people who had nothing to do with Linux at all in the
first place, this seems like a very dangerous thing to let them do to
you, or anyone else who has signed up for this.  This is _our_ project,
not theirs.  Why would you ever give the power that you have, and have
created, away to others that might not have your project's best interest
in mind?

Remember, they approached all of us, shopping around the fact that they
knew of companies that were violating, showing us printouts of files
that were in the information they had received from their Busybox work
at vmware.  They were digging and asking and wanting to bring this type
of lawsuit forward, it was not brought by us, the developers.  Bradley
has always been very upfront about this, I'll give him credit for that.

Go and watch their talks!  Like Linus, I spent all weekend, reading and
watching their talks.  It's actually worse than I thought.  I have notes
somewhere around here when I was going to try to point them all out, but
I gave up after a while as it was just crazy...

I can dig them up if you really want, but I suggest you go do it
yourself, it's more powerful that way :)

> > What developers have signed over copyrights to the SFC?  Was this done
> > in a "permanent" way?  "revoking" copyright assignment isn't exactly a
> > simple thing to do, last I checked, so is this really true?
> 
> If this is a concern, perhaps its something SFC can address. Also, would
> you like a way to participate without signing off copyrights to SFC ? If so
> that sounds like a type of discussion we could start.

How can you participate in something that you are not a part of, and
right now, really really want nothing at all to do with?

I'm really sick after watching all of this, and honestly, want nothing
to do with the SFC anymore at all.  My employment contract at the LF
says that I can't tell them what to do, and they can't tell me what to
do either, but I'm going to go recommend to them that they not donate
any more money to the SFC as I really think they are toxic to the future
of Linux, which is the exact opposite of the LF's charter.

Outreachy is a good thing that SFC does though, so I'll still support
that for now and recommend that the LF funds that portion (if that's
even possible, I have no idea how the LF donates their funds, or if even
the SFC accepts earmarked funds).  Perhaps the SFC can focus on doing
that type of work (outreach and growth, not litigate and destroy).

thanks,

greg k-h

[1] You will note that the FSF and the people who created the GPLv2 are
    not even involved in this!  If anyone actually had any bit of
    standing for issues like this and how it applied to Linux, it might
    be them (and even then, we could argue that they don't matter at
    all, so why would some "random" people who are not developers, and
    don't have anything "invested" in Linux, really care about us at
    all?)
