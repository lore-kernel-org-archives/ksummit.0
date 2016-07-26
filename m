Return-Path: <stern+579b92ac@rowland.harvard.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 286C671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:17:15 +0000 (UTC)
Received: from netrider.rowland.org (netrider.rowland.org [192.131.102.5])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 8D3F323B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:17:14 +0000 (UTC)
Date: Tue, 26 Jul 2016 09:10:32 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
To: Hannes Reinecke <hare@suse.com>
In-Reply-To: <f423b811-88a4-b8ca-6793-1a543e8dc88d@suse.com>
Message-ID: <Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: jakub@redhat.com, parri.andrea@gmail.com, j.alglave@ucl.ac.uk,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	ramana.radhakrishnan@arm.com, luc.maranget@inria.fr
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 26 Jul 2016, Hannes Reinecke wrote:

> I have been playing around with RCUs and memory barriers quite a lot 
> recently, and found some really 'odd' use-cases in the kernel which 
> would benefit from improvements here.

Could you post one or two examples?  It would be interesting to see 
what they involve.

Alan Stern
