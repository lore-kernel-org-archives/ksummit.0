Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EDE9A489
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:45:10 +0000 (UTC)
Received: from resqmta-ch2-06v.sys.comcast.net
	(resqmta-ch2-06v.sys.comcast.net [69.252.207.38])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D10F142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:45:10 +0000 (UTC)
Date: Fri, 31 Jul 2015 13:45:08 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <559C3F56.8040606@roeck-us.net>
Message-ID: <alpine.DEB.2.11.1507311342380.14357@east.gentwo.org>
References: <1435997161.3324.33.camel@infradead.org>
	<20150707143447.6f345e91@gandalf.local.home>
	<1436298670.3324.107.camel@infradead.org>
	<559C3F56.8040606@roeck-us.net>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL enforcement actions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 7 Jul 2015, Guenter Roeck wrote:

> ... and then have the LF attorneys brief LF member companies about the
> outcome of the meeting. I always find those legal briefings very useful.

One subject that I would like to have some clarification on is relicensing
of in-kernel-code. There were a couple of license changes recently from
GPL to "pick onee GPL or BSD" in the infiniband stack. I was a bit
surprised by that being possible.

Presumably the copyright holders have to agree to this. What exactly
qualifies to be a copyright holder? If one is mentioned in the file
header? If one modified a line of code in the file?
