Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D96D49B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:03:12 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDD48143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:03:11 +0000 (UTC)
Message-ID: <55AD7E2C.9090804@roeck-us.net>
Date: Mon, 20 Jul 2015 16:03:08 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>
References: <20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<alpine.DEB.2.10.1507201022370.2408@hadrien>
	<20150720203007.GA7797@kroah.com> <55AD7263.8050605@roeck-us.net>
	<20150720223242.GB23638@kroah.com>
In-Reply-To: <20150720223242.GB23638@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/20/2015 03:32 PM, Greg KH wrote:
> On Mon, Jul 20, 2015 at 03:12:51PM -0700, Guenter Roeck wrote:
>> On 07/20/2015 01:30 PM, Greg KH wrote:
>>
>>>> If there really is a problem that some maintainer is getting inundated
>>>> with patches addressing unimportant cosmetic issues, could it be a good
>>>> idea to:
>>>>
>>>> * Fix the code and get it over with,
>>>> * Drop the code from the kernel, if no one uses it, or
>>>> * Put a comment in the file saying that the file is no longer being
>>>> actively developed and only bug fixes will be accepted.
>>>
>>> I agree with this.  If your subsystem is constantly getting hit with
>>> coding style cleanups that you don't want (i.e. SCSI), put something in
>>> the top of the file that says "don't clean up the style".
>>>
>>
>> How about a cleanup tag in MAINTAINERS ? Then checkpatch could warn
>> if it is used on a file tagged as do-not-clean, and every maintainer
>> could set preferences as desired.
>>
>> Something like
>>
>> C: yes
>> C: limited (prior to functional changes only)
>> C: no
>>
>> Either limited or yes could be the default.
>>
>> The "Obsolete" status presumably implies that cleanups are not desired,
>> and checkpatch could issue a warning if it is run on an obsolete file
>> or subsystem.
>
> Ugh, let's stop trying to add more flags to MAINTAINERS that no one will
> notice and will get out of date and be a pain to maintain over time.
>
It would be noticed since checkpatch would use it. And maintainers would
have interest to keep it up to date, especially those who dislike cleanup
patches.

> Is this really such a major issue?  If you don't want cleanup patches,
> just politely refuse them and point people at drivers/staging/ where I
> will gladly take them.  It's not tough at all.
>
It isn't tough or an issue for me, but I don't normally refuse cleanup
patches either.

> Or better yet, take Julia's advice, and just fix up your subsystem to
> not need these patches at all.  That should take all of an afternoon's
> worth of effort at most, drivers/scsi/ notwithstanding, that beast is
> horrid...
>

Yes, that is what I am doing once in a while, if I need a timeout from other
work. Since I don't mind cleanup patches, so I would set the tag to 'yes'
for all files where I am listed as maintainer. But other maintainers do
actively reject cleanup patches, sometimes with less then friendly words.

Without a tag, the result is to discourage cleanup patches in general,
or what I would call the lowest common denominator. While I understand
and accept that other maintainers dislike cleanup patches, I don't see
why I should have to suffer the consequences.

Guenter
