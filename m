Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01F0925A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 15:43:13 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1751811C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 27 Aug 2016 15:43:13 +0000 (UTC)
Date: Sat, 27 Aug 2016 17:43:20 +0200
From: Greg KH <greg@kroah.com>
To: Karen Sandler <karen@sfconservancy.org>
Message-ID: <20160827154320.GA27132@kroah.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<1472225020.3680.8.camel@localhost.localdomain>
	<1472229438.5189.79.camel@HansenPartnership.com>
	<1472231998.3680.18.camel@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472231998.3680.18.camel@localhost.localdomain>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
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

On Fri, Aug 26, 2016 at 01:19:58PM -0400, Karen Sandler wrote:
> On Fri, 2016-08-26 at 12:37 -0400, James Bottomley wrote:
> 
> >  The idea that your opinion only counts if you've already agreed to
> > support SFC actions.  Effectively it disenfranchises the majority in
> > the kernel and leads directly to a lot of the irritation that's been
> > coming out on the list.
> 
> The whole reason I proposed the session (in addition to information
> sharing) is to get feedback on our work from those who don't participate
> and be coordinated as possible with the work you, Greg and others not in
> our coalition do in your GPL compliance efforts. We're obviously already
> in touch with those who are in our coalition. :)

As I've said before, I don't think the Kernel Summit is a good place for
this as it involves legal issues, and the Kernel Summit is about
technical issues.

But, I do like Linus's proposal of "only developers" in the room talking
about stuff like this.  No lawyers, or managers, or "representatives"
present.  That could be "fun".

As you well know, lawyers can easily get disbarred for discussing things
with clients of others when the client's lawyers are not present, even
in "friendly situations".  Almost all of us are already clients of other
lawyers, given our corporate affiliations, and clients can not waive
that right to not have council present when talking about things to
other lawyers.  So proposing a session like you have, seems like a huge
risk for anyone there.  Unless you expect us all to drag our own lawyers
along, and again, I don't want to attend a kernel summit where I am
forced to do that.

> > I just said that I think there's a viable way forward from the
> > worst case outcome and the LF has been funding the tool work we'll need
> > to survive in that world.
> 
> Conservancy has coordinated with these efforts. We've discussed the tool
> extensively with its primary author and gave feedback from our work to
> inform its progress.  We're glad they plan to release their newer tools
> (and most importantly, curated data) soon under a free and open license.
> The base tools used for that work, of course, Conservancy has already
> been using for some time in our compliance work:
> 
> https://sfconservancy.org/copyleft-compliance/vmware-code-similarity.html

That's much different tool than what James was referring to.  The work
that the LF has been doing is not based on CCFinder, and (in my opinion)
is much more powerful and provides much more information about
attribution of work and the proof of where all code changes came from.
Daniel's work was presented at a meeting in Barcelona that I think you
attended, along with many other legal open source people.  An updated
version of the tools and their capabilities was also presented this week
at LinuxCon for everyone to see:
	https://lcccna2016.sched.org/event/7RUK

As you know, academics take attribution very seriously, please don't
imply you have been working on this project with Daniel and Kate when
as far as I know, no one from the SFC as been doing so.

thanks,

greg k-h
