Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD796487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 19:06:54 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B3217123
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 19:06:53 +0000 (UTC)
Message-ID: <1438369611.2179.70.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Lameter <cl@linux.com>
Date: Fri, 31 Jul 2015 12:06:51 -0700
In-Reply-To: <alpine.DEB.2.11.1507311342380.14357@east.gentwo.org>
References: <1435997161.3324.33.camel@infradead.org>
	<20150707143447.6f345e91@gandalf.local.home>
	<1436298670.3324.107.camel@infradead.org>
	<559C3F56.8040606@roeck-us.net>
	<alpine.DEB.2.11.1507311342380.14357@east.gentwo.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2015-07-31 at 13:45 -0500, Christoph Lameter wrote:
> On Tue, 7 Jul 2015, Guenter Roeck wrote:
> 
> > ... and then have the LF attorneys brief LF member companies about the
> > outcome of the meeting. I always find those legal briefings very useful.
> 
> One subject that I would like to have some clarification on is relicensing
> of in-kernel-code. There were a couple of license changes recently from
> GPL to "pick onee GPL or BSD" in the infiniband stack. I was a bit
> surprised by that being possible.
> 
> Presumably the copyright holders have to agree to this. What exactly
> qualifies to be a copyright holder? If one is mentioned in the file
> header? If one modified a line of code in the file?

It's the copyright law definition: for a work (or a modification of a
work) to be eligible for copyright protection it (or the modification)
must rise to the level of being original.  There's a lot of case law
over what this means for a book, but very little over what this means
for a computer program.  In one of the book decisions, the US Supreme
Court did say that originality requires "a modicum of creativity" (that
was a case about copyrighting the phone book) which likely applies to
programs as well.  There's also case law that implies things that are
common patterns in programming (like correcting a use after free) may
not be original enough but beyond that, it's anyone's guess.

James
