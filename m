Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0B18AD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 23:10:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0001.hostedemail.com
	[216.40.44.1])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 1A52B1DC85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 23:10:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 623DB180DBB54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 22:52:53 +0000 (UTC)
Message-ID: <1501887168.2106.8.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Greg KH <greg@kroah.com>, Theodore Ts'o <tytso@mit.edu>
Date: Fri, 04 Aug 2017 15:52:48 -0700
In-Reply-To: <20170804175353.GB13252@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<c2091a67-0a06-44ae-86e0-84879f3c7865@suse.com>
	<20170804160454.GC13098@kroah.com>
	<20170804171444.gv7ev6zhkj3bzf5u@thunk.org>
	<20170804175353.GB13252@kroah.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2017-08-04 at 10:53 -0700, Greg KH wrote:
> On Fri, Aug 04, 2017 at 01:14:44PM -0400, Theodore Ts'o wrote:
> > On Fri, Aug 04, 2017 at 09:04:54AM -0700, Greg KH wrote:
> > > 
> > > We could start searching linux-next for new additions of sysfs files
> > > (search for the ATTR macros), and complain that there are no matching
> > > Documentation/ABI/ updates at the same time.  I try to do that when
> > > reviewing patches that come through my trees, but yes, this is hard to
> > > keep up to date with.
> > > 
> > > Sounds like a good GSoC project though, setting up the infrastructure to
> > > do this in a semi-automated fashion.
> > 
> > This sounds like an obvious thing to add to checkpatch?
> 
> Probably, but lots of times this would be a false-positive as
> documentation shows up in a later patch in the series to make things
> easier to review.
> 
> But if you want to try to add it to checkpatch, be my guest, last time I
> tried I gave up in as the regexes there brought me to tears...

Piker.  Even Linus has adapted to perl regexes...

cheers, Joe
