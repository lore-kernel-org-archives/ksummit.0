Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45428409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 18:52:24 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9759811C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 18:52:23 +0000 (UTC)
Date: Mon, 19 Oct 2015 14:52:20 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Jerome Glisse <j.glisse@gmail.com>
Message-ID: <20151019185220.GA3068@thunk.org>
References: <CAPcyv4j44fE1BFFdRyLmaaF+CTJsMtaNC_=jN9+hqPCGGwXnsQ@mail.gmail.com>
	<561FD92D.6010309@sr71.net> <20151016210820.GA23471@gmail.com>
	<20151019182923.GB5907@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151019182923.GB5907@thunk.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] ZONE_DEVICE and Persistent Memory (was: Re:
 Draft agenda for the kernel summit)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 19, 2015 at 02:29:23PM -0400, Theodore Ts'o wrote:
> On Fri, Oct 16, 2015 at 05:08:21PM -0400, Jerome Glisse wrote:
> > On Thu, Oct 15, 2015 at 09:49:49AM -0700, Dave Hansen wrote:
> > > On 10/14/2015 05:17 PM, Dan Williams wrote:
> > > > I am wondering if it would be productive / good use of time to do a
> > > > direction check on the mm changes being done in support of large
> > > > persistent memory devices.
> > > 
> > > I think there's probably an even wider discussion that we should have here.
> > > 
> > > Beyond just ZONE_DEVICE, the sheer number of memory types is increasing
> > > fast, and our current solutions are, at best, inconsistent. We currently
> > > handle memory types as new zones, repurposed zones, pageblocks inside
> > > zones, or faux NUMA nodes.
> > > 
> > > Are our current solutions too erratic?
> > > Do we need to solve these problems generally, or are we going to kill
> > > ourselves trying to make everyone happy?
> > > What types do we ignore today, but shouldn't?
> > > What types are coming down the pike?
> > 
> > I think what i am working on (HMM and how to leverage GPU memory that is
> > not accessible by the CPU) apply here too. All features i am working on
> > imply that i have to dig through layers of code seeing if i can abuse an
> > existing mechanism to achieve something new.
> > 
> > So i definitly think we should discuss where we are and where we want to
> > be.
> 
> Dan, would you be willing to kick off the discussion?

Oops, sorry, it was pointed out to me that Dan isn't going to be at
the Kernel Summit.  Jerome, would you be willing to kick off the
discussion and report back to Dan?

						- Ted
