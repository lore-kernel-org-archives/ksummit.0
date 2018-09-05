Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20CCF151D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:19:29 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D22FD7EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:19:28 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id y4-v6so3672833pgp.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 09:19:28 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, Justin Forbes <jforbes@redhat.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<CAFbkSA3Zjojhb4uUFrdpJUTSWz1V9RbG_EL83roQY3bzX80i-g@mail.gmail.com>
	<20180905144233.GB15573@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <7649ab67-cbaa-291b-d0e1-40e718c02523@roeck-us.net>
Date: Wed, 5 Sep 2018 09:19:25 -0700
MIME-Version: 1.0
In-Reply-To: <20180905144233.GB15573@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/05/2018 07:42 AM, Greg KH wrote:
[ ... ]
> I could do a "one release a week" cycle, which I would _love_ but that
> is not going to decrease the number of patches per release, it is only
> going to make them large (patch rate stays the same, and increases, no
> matter when I release)  So I had been thinking that to break the
> releases up into a "here's a hundred or so patches" per release, was a
> helpful thing to the reviewers.
> 
> If this assumption is incorrect, yes, I can go to one-per-week, if
> people agree that they can handle the large increase per release
> properly.  Can you all do that?
> 

Tough call. More patches per release means higher likelihood of conflicts,
and thus increases the per-release risk (I just checked, chromeos-4.4
carries a whopping 15,000+ patches on top of v4.4.y. Outch). On the other
side, I do miss releases lately, but that is because it sometimes takes
several days for a merge to be accepted by the Chrome OS QC, on top of
the internal merge review process which also takes 2-3 days. Thinking
about it, I'd rather miss a release once in a while than having a rigid
release schedule with more patches per release.

Ultimately, my conclusion is that the current process works fine for us,
but I can also live with fixed schedule. However, I would really dislike
a longer -rc cycle since, for me, it would be zero gain and added pain.

> Are we going to do a "patch tuesday" like our friends in Redmond now? :)
> 
> Note, if we do pick a specific day-per-week, then anything outside of
> that cycle will cause people to look _very_ close at the release.  I
> don't know if that's a good thing or not, but be aware that it could
> cause unintended side-affects.  Personally I think the fact that we are
> _not_ regular is a good thing, no out-of-band information leakage
> happens that way.
> 

Agreed.

Guenter
