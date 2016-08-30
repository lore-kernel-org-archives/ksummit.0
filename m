Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9817C25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:17:36 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A8CAEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:17:35 +0000 (UTC)
Date: Tue, 30 Aug 2016 21:17:31 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Greg KH <greg@kroah.com>, jra@samba.org
Message-ID: <20160830191731.GS3296@wotan.suse.de>
References: <87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<87bn0dnc6f.fsf@ebb.org>
	<1472348609.2440.37.camel@HansenPartnership.com>
	<20160828042454.GA8742@jeremy-acer>
	<20160828125542.7oejzcbpeozkrq3k@thunk.org>
	<20160830161557.GN3296@wotan.suse.de>
	<20160830164540.GA4925@kroah.com>
	<20160830172033.GP3296@wotan.suse.de>
	<20160830181528.GB19450@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160830181528.GB19450@kroah.com>
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

On Tue, Aug 30, 2016 at 08:15:28PM +0200, Greg KH wrote:
> <fixing Jeremy's email address, Luis, your email client broke it...>

Stupid mutt, sorry!

> On Tue, Aug 30, 2016 at 07:20:33PM +0200, Luis R. Rodriguez wrote:
> > On Tue, Aug 30, 2016 at 06:45:40PM +0200, Greg KH wrote:
> > > That brings up a question, who exactly is the SFC representing here?
> > 
> > I've come out:
> > 
> > http://www.do-not-panic.com/2016/02/im-part-of-conservancys-gpl-compliance.html
> > 
> > Others have as well. We don't force people to come out though obviously, so its
> > optional. Some folks would prefer their association to remain private. That's
> > a right they should have.
> 
> It's something you would "loose" if you actually file for something.
> And for the SFC to approach a company with a vague "we have random
> copyrights, give us the code!" that message is horrid!

Growing pains.

> Go back and read my long email about what happens at a company when they
> are approached by a "representative", and not a developer.  Especially
> one that makes lots and lots and lots of public statements about how
> companies are evil, how Linux is the GPL's ultimate test case, how they
> want to use the courts to clarify the GPL's "grey areas".  All of these
> have been stated numerous times by the leadership of the SFC as recently
> as a few months ago.

I've known Bradley since I was an eager beaver Linux college contributor, and I
agree that clearly his background and statements can only send chills to
certain companies. But he's also known me, so, I try to what I can to influence
him as well with regards to how we work best upstream, and I'm pretty sure he
has always appreciated this effort. He's also learned from others and he
listens. In fact, it is his job to listen.

He recently noted he's to be held accountable to that.

I will note that despite what he says, when it comes to the kernel actions
actually speak more loudly towards advocating permissive licenses than the GPL.
In fact he has a Sign-off-by on a driver upstream and that's all ISC licensed.
As much as I'm sure it burned his copyleft heart, we did this to help the BSD
community as that is what we needed to do. In fact we have this effort to blame
for the slew of new permissive licensed practices by a slew of other vendors
after that.

> Again, that is NOT how to create and sustain a community.  That's how
> you set fire to it and watch it burn.  It happened to Busybox and I
> don't want it to happen here to Linux.

Understood.

> > What do you think? Did it ever cross your mind to consider joining ?
> 
> Sure, many years ago.  And I'm glad I never signed the document that
> Bradley gave me many years ago at LinuxCon as it would have been a bad
> idea (not to mention that people giving developers random legal
> documents to sign at a conference really isn't a wise thing on either
> parties involved...)  As I mentioned my discussion with Bradley last
> year, at LinuxCon, I did not want him to continue to do this as it is
> not how you create a community.
> 
> Again, the SFC puts the GPL before Linux,

That's news to me. I think everyone on the alliance would have a fit if
this were true. So please stop equating Bradley's own sentiments to that
of the alliance's. If that's the message folks get then we need to correct
this.

> and is willing to do things to
> make Linux fail if it somehow finally answers their unresolved questions
> about the GPL[1].

We won't allow for that. It is stupid. It should be clear by now the issue
has been a proper due process for issues that are long standing and not
resolved, last resort issues.

> For a group of people who had nothing to do with Linux at all in the
> first place, this seems like a very dangerous thing to let them do to
> you, or anyone else who has signed up for this.  This is _our_ project,
> not theirs.  Why would you ever give the power that you have, and have
> created, away to others that might not have your project's best interest
> in mind?

You are making an assumption as to what SFC does on behalf of kernel developers,
and that we do not discuss things carefully. Obviously that is incorrect.

> Remember, they approached all of us, shopping around the fact that they
> knew of companies that were violating, showing us printouts of files
> that were in the information they had received from their Busybox work
> at vmware.  They were digging and asking and wanting to bring this type
> of lawsuit forward, it was not brought by us, the developers.  Bradley
> has always been very upfront about this, I'll give him credit for that.

Busybox is another one of their members. He has *listened* to their request
to try to request more folks involved. It makes sense to dismiss cases
where no harm is done or no due process is followed, but if the violation
is legit and due process is being followed, it is worth *considering*. Do
you not think ?

> Go and watch their talks!  Like Linus, I spent all weekend, reading and
> watching their talks.  It's actually worse than I thought.  I have notes
> somewhere around here when I was going to try to point them all out, but
> I gave up after a while as it was just crazy...

Growing pains. Remember its their job to listen to alliance members. So
I voice these concerns ;)

> I can dig them up if you really want, but I suggest you go do it
> yourself, it's more powerful that way :)

No, I understand. Let me be clear that there is a disconnect between
philosophy, engineering and finance. Throw law in the mix and you have
a good Mexican Mole sauce. The evolution is painfully slow. As Conservancy
gains kernel developers they educate Conservancy on matters and tact for
*our* community, just as I'm sure others members (hey git is one) do for
their community.

In lack of a better due process, which seems rather implicit and it seems only
work for a few, some folks resort to alternatives. If you ask me -- the Principles
are a huge win over anything close to represent due process in a responsible
way than for instance what seems to have been Patrick's approach. Asking for
more feedback openly is another good step. But joining and actively voicing
your opinion however is the best strategy, provided of course your concerns
are addressed.

> > > What developers have signed over copyrights to the SFC?  Was this done
> > > in a "permanent" way?  "revoking" copyright assignment isn't exactly a
> > > simple thing to do, last I checked, so is this really true?
> > 
> > If this is a concern, perhaps its something SFC can address. Also, would
> > you like a way to participate without signing off copyrights to SFC ? If so
> > that sounds like a type of discussion we could start.
> 
> How can you participate in something that you are not a part of, and
> right now, really really want nothing at all to do with?
> 
> I'm really sick after watching all of this, and honestly, want nothing
> to do with the SFC anymore at all.  My employment contract at the LF
> says that I can't tell them what to do, and they can't tell me what to
> do either, but I'm going to go recommend to them that they not donate
> any more money to the SFC as I really think they are toxic to the future
> of Linux, which is the exact opposite of the LF's charter.

You've made up your mind, and I understand. I'm however in hope other
developers who do know folks who are part of the alliance can talk
and decide based on these conversations. SFC is simply there to listen
to us.

Its sad that misrepresented statements are why you have given up, instead of
talking to members of the alliance and what we do, and more importantly the how
consensus is reached.

On the other hand I donate and I joined and I voice my opinion, strongly.

Also, by not addressing the last resort measure, or trying to correct SFC's
approach, you still leave a gap and I'd hate for more Patrick type of
stupid things to happen.

> Outreachy is a good thing that SFC does though, so I'll still support
> that for now and recommend that the LF funds that portion (if that's
> even possible, I have no idea how the LF donates their funds, or if even
> the SFC accepts earmarked funds).  Perhaps the SFC can focus on doing
> that type of work (outreach and growth, not litigate and destroy).

Outreachy is amazing :D

  Luis
