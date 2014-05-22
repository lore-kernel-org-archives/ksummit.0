Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 998BC26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 06:52:58 +0000 (UTC)
Received: from mail-3y.bbox.fr (mail-3y.bbox.fr [194.158.98.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C7E081FAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 06:52:57 +0000 (UTC)
Date: Thu, 22 May 2014 08:52:55 +0200 (CEST)
Message-Id: <20140522.085255.1219334027984029922.chriscool@tuxfamily.org>
To: johan@herland.net
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <CALKQrgfK7xosKvDHBS3HPoHtjZY09mt04MSbVDpEFhOcy8UqQg@mail.gmail.com>
References: <20140522.064910.1233749401586905587.chriscool@tuxfamily.org>
	<s5h4n0igxs1.wl%tiwai@suse.de>
	<CALKQrgfK7xosKvDHBS3HPoHtjZY09mt04MSbVDpEFhOcy8UqQg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: gitster@pobox.com, jason@lakedaemon.net,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Johan Herland <johan@herland.net>

> On Thu, May 22, 2014 at 7:58 AM, Takashi Iwai <tiwai@suse.de> wrote:
>>> From: Junio C Hamano <gitster@pobox.com>:
>>> A good way forward to solve Iwai-san's original issue might be
>>>
>>>  * Establish the "Fixes:" mentioned above as a standard practice.
>>>    Polishing Christian's interpret-trailers tool might be a good way
>>>    to encourage developers to do so.
>>>
>>>  * Have an easy way for developers to scan incoming commits for
>>>    these "Fixes:" footer, and record the reverse mapping locally, so
>>>    that we can go from a commit whose brokenness is discovered later
>>>    to the commit that fixes its breakage efficiently.  "notes" may
>>>    be a good mechanism to implement this mapping, and we do not have
>>>    to worry about sharing the notes trees among developers.
>>>
>>>  * The information is visible with "log --show-notes" if it is
>>>    stored in local notes.  When an earlier commit that was later
>>>    found to be broken is shown, the note that points at the commit
>>>    that fixes it will be shown.
>>>
>>>  * Teach "bisect" to also take notice of this information, and
>>>    temporarily cherry-pick while testing commits with fixes that
>>>    were discovered later, in a way similar to what was suggested by
>>>    Jiri Kosina in an earlier message.
>>
>> These sound like a good plan, indeed.
>>
>> But, one missing, and maybe often happening thing is: people forget to
>> tag at the right time.  In the scenario above, if a maintainer forgets
>> to add Fixes: tag in the fix commit, it's all gone?
> 
> Yes, unless you add it (using git-notes) as an annotation to the fix
> commit, but then you're back to the (perceived) problem of sharing
> those notes.

By the way, I wonder if it might be possible to have signed "notes" or
signed "replace"?

Best,
Christian.
