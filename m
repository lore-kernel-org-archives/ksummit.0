Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B025E8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 16:55:46 +0000 (UTC)
Received: from blackbird.sr71.net (www.sr71.net [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 70ABD15E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 16:55:46 +0000 (UTC)
To: Dan Williams <dan.j.williams@intel.com>, Theodore Ts'o <tytso@mit.edu>
References: <CAPcyv4j44fE1BFFdRyLmaaF+CTJsMtaNC_=jN9+hqPCGGwXnsQ@mail.gmail.com>
From: Dave Hansen <dave@sr71.net>
Message-ID: <561FD92D.6010309@sr71.net>
Date: Thu, 15 Oct 2015 09:49:49 -0700
MIME-Version: 1.0
In-Reply-To: <CAPcyv4j44fE1BFFdRyLmaaF+CTJsMtaNC_=jN9+hqPCGGwXnsQ@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 10/14/2015 05:17 PM, Dan Williams wrote:
> I am wondering if it would be productive / good use of time to do a
> direction check on the mm changes being done in support of large
> persistent memory devices.

I think there's probably an even wider discussion that we should have here.

Beyond just ZONE_DEVICE, the sheer number of memory types is increasing
fast, and our current solutions are, at best, inconsistent. We currently
handle memory types as new zones, repurposed zones, pageblocks inside
zones, or faux NUMA nodes.

Are our current solutions too erratic?
Do we need to solve these problems generally, or are we going to kill
ourselves trying to make everyone happy?
What types do we ignore today, but shouldn't?
What types are coming down the pike?
