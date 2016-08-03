Return-Path: <prvs=70234ba1cc=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02A0F899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:10:45 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7C6B137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:10:42 +0000 (UTC)
To: Greg KH <greg@kroah.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<87oa5aqjmq.fsf@intel.com> <20160803110935.GA26270@kroah.com>
	<1600610.QIejSIJ3WK@vostro.rjw.lan> <20160803133909.GA1917@kroah.com>
From: Chris Mason <clm@fb.com>
Message-ID: <35a5af40-3d28-31c0-49c9-040787865e60@fb.com>
Date: Wed, 3 Aug 2016 10:10:11 -0400
MIME-Version: 1.0
In-Reply-To: <20160803133909.GA1917@kroah.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/03/2016 09:39 AM, Greg KH wrote:
> On Wed, Aug 03, 2016 at 03:20:44PM +0200, Rafael J. Wysocki wrote:
>>
>>> Yes, we have regressions at times in stable kernels, but
>>> really, our % is _very_ low.  Probably less than "normal" releases, but
>>> that's just a random guess, it would be good for someone to try to do
>>> research on this before guessing...
>>
>> Jon did some of that at LWN (https://urldefense.proofpoint.com/v2/url?u=http-3A__lwn.net_Articles_692866_&d=CwICAg&c=5VD0RTtNlTh3ycd41b3MUw&r=9QPtTAxcitoznaWRKKHoEQ&m=7CKf6C9MIWdArdXqempiUXN4-6S4XJQh__XLpksOD1Q&s=HOtW7kfaOsdoqlw1ZvVCCpMZMCy5HOZKu-WalHk6kbY&e= ) and he got
>> regression rate estimates for various -stable lines in the range between
>> 0.6-1.4% (4.6) and 2.2-9.6% (3.14).
>>
>> Of course, whether or not these numbers are significant is a matter of
>> discussion, but they are clearly nonzero.
>
> I agree, they will always be nonzero, but what is the acceptable number?  :)

Diary of a kernel engineer

Day1:

Crash in procfs, googled the stack trace, found fix upstream, back ported.

Crash in hugepages, googled the stack trace, found the fix upstream, 
backported.

Crash in some filesystem, googled the stack trace, found the fix 
upstream, backported.

Day 68:

Are these backports right?  Has anyone else tried them?  Do I have all 
the dependent patches?  Found fix upstream, backported.

Day 157: Oh shit a new bug!  Oh wait, found fix upstream, backported.

What does stable really do?  Obviously its what you run when you want 
the fixes, but it's a crucial collection point for those fixes and a set 
of discussions (in git) about what fixes are most important and how to 
pull them back to older kernels.  It's a thing with a name that we can 
point to when we want to explain how to turn kernel X into something 
that can survive bug Y without exploding.

I did once say that we'd never had a regression in production caused by 
stable, but eventually it did happen.  I'm pretty sure we found the fix 
in stable.

Of course, every bug isn't already fixed upstream but really a shocking 
number already are.  Stable gives us the chance to focus our energy on 
the bugs that aren't already fixed, and on making our own new exciting 
bugs instead of fixing old boring ones.

Long story short, I'd rather we backported more and worried less.  If a 
maintainer has a proper flow of fixes into stable, everyone trying to 
depend on that subsystem benefits, even (especially?) when there are 
regressions from time to time.

None of this is meant to detract from regression tracking, which is a 
really important part of figuring out which subsystems need more love or 
testing before deploying into production.  Sometimes we have to track in 
our head, but anything to make it more formal is a great thing.

-chris
