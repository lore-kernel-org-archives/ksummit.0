Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 38DE4415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 17:11:24 +0000 (UTC)
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7B66184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 17:11:23 +0000 (UTC)
Received: by mail-qk0-f176.google.com with SMTP id d78so30713330qkb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 10:11:23 -0700 (PDT)
To: Greg KH <gregkh@linuxfoundation.org>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<20170623145229.GB1855@kroah.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <af2f71f7-27bf-6165-c6fb-e90b3bb23e6a@redhat.com>
Date: Sun, 25 Jun 2017 10:11:19 -0700
MIME-Version: 1.0
In-Reply-To: <20170623145229.GB1855@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/23/2017 07:52 AM, Greg KH wrote:
> On Wed, Jun 21, 2017 at 03:34:11PM -0700, Laura Abbott wrote:
>> - There's still a gap between when bugs hit Linus' tree and when
>> stable releases come out. This is not a knock against stable or
>> a request for stable to go faster :). I try
>> and monitor stable@ for fixes but there still seems to be a
>> large time gap for identifying fixes that have been fixes in
>> master that are relevant to a recent stable release.
> 
> Ok, I'll bite, what exactly do you mean by "large time"?  During the
> -rc1 merge window, it can take a few weeks for me to catch up with the
> large onslaught of patches marked for stable, but almost all of those
> were determined by the develoers to not be all-so-serious, as they were
> delayed in getting to Linus for -rc1, and not before.>

'large' is my completely biased perception :)

Fedora generally does not rebase until the .2 or .3 stable release
which usually takes care of most of the -rc1 issue. The problem
tends to come from issues which are not found until later -rcs
and for whatever reason haven't made it to stable yet.

> You can always email and ask for specific patches to be queued up now,
> as I go through the list in a semi-random manner.
> 

If I can find the patch, I have no problem bringing it into Fedora
or requesting it for stable. Finding a patch is the tricky part
which I'd like to improve. My current technique relies on a combination
of good guessing where a fix might come from and random inspiration.
Maybe this is just the curse of the maintainer and there isn't a
better method but having something a bit more systematic to check
would be useful, especially for training other maintainers.

> After the big -rc1 chunk of patches are merged, it's usually only a week
> at most before the patches hit a stable release, people usually complain
> it goes too fast, not that it's too slow these days.
> > thanks,
> 
> greg k-h
> 


Thanks,
Laura
