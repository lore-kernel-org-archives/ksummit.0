Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C200592
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 21:08:29 +0000 (UTC)
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 53EFA14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 21:08:29 +0000 (UTC)
Received: by qgez77 with SMTP id z77so111315734qge.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 14:08:28 -0700 (PDT)
Date: Fri, 16 Oct 2015 17:08:21 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: Dave Hansen <dave@sr71.net>
Message-ID: <20151016210820.GA23471@gmail.com>
References: <CAPcyv4j44fE1BFFdRyLmaaF+CTJsMtaNC_=jN9+hqPCGGwXnsQ@mail.gmail.com>
	<561FD92D.6010309@sr71.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <561FD92D.6010309@sr71.net>
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

On Thu, Oct 15, 2015 at 09:49:49AM -0700, Dave Hansen wrote:
> On 10/14/2015 05:17 PM, Dan Williams wrote:
> > I am wondering if it would be productive / good use of time to do a
> > direction check on the mm changes being done in support of large
> > persistent memory devices.
> 
> I think there's probably an even wider discussion that we should have here.
> 
> Beyond just ZONE_DEVICE, the sheer number of memory types is increasing
> fast, and our current solutions are, at best, inconsistent. We currently
> handle memory types as new zones, repurposed zones, pageblocks inside
> zones, or faux NUMA nodes.
> 
> Are our current solutions too erratic?
> Do we need to solve these problems generally, or are we going to kill
> ourselves trying to make everyone happy?
> What types do we ignore today, but shouldn't?
> What types are coming down the pike?

I think what i am working on (HMM and how to leverage GPU memory that is
not accessible by the CPU) apply here too. All features i am working on
imply that i have to dig through layers of code seeing if i can abuse an
existing mechanism to achieve something new.

So i definitly think we should discuss where we are and where we want to
be.

Cheers,
Jérôme
