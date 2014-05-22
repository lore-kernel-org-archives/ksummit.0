Return-Path: <johan@herland.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0490A7FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 07:05:02 +0000 (UTC)
Received: from mail12.copyleft.no (mail12.copyleft.no [188.94.218.224])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B1C01FAA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 07:05:00 +0000 (UTC)
Received: from locusts.copyleft.no ([188.94.218.116] helo=mail.mailgateway.no)
	by mail12.copyleft.no with esmtp (Exim 4.76)
	(envelope-from <johan@herland.net>) id 1WnMUb-0003NN-79
	for ksummit-discuss@lists.linuxfoundation.org;
	Thu, 22 May 2014 08:28:41 +0200
Received: from mail-ob0-f173.google.com ([209.85.214.173])
	by mail.mailgateway.no with esmtpsa (TLSv1:RC4-SHA:128)
	(Exim 4.72 (FreeBSD)) (envelope-from <johan@herland.net>)
	id 1WnMUa-000F8J-PG for ksummit-discuss@lists.linuxfoundation.org;
	Thu, 22 May 2014 08:28:40 +0200
Received: by mail-ob0-f173.google.com with SMTP id wm4so3317412obc.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 23:28:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <s5h4n0igxs1.wl%tiwai@suse.de>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
	<s5h1tvuf4ov.wl%tiwai@suse.de>
	<20140522.064910.1233749401586905587.chriscool@tuxfamily.org>
	<s5h4n0igxs1.wl%tiwai@suse.de>
Date: Thu, 22 May 2014 08:28:37 +0200
Message-ID: <CALKQrgfK7xosKvDHBS3HPoHtjZY09mt04MSbVDpEFhOcy8UqQg@mail.gmail.com>
From: Johan Herland <johan@herland.net>
To: Takashi Iwai <tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Junio C Hamano <gitster@pobox.com>, jason@lakedaemon.net
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 22, 2014 at 7:58 AM, Takashi Iwai <tiwai@suse.de> wrote:
>> From: Junio C Hamano <gitster@pobox.com>:
>> A good way forward to solve Iwai-san's original issue might be
>>
>>  * Establish the "Fixes:" mentioned above as a standard practice.
>>    Polishing Christian's interpret-trailers tool might be a good way
>>    to encourage developers to do so.
>>
>>  * Have an easy way for developers to scan incoming commits for
>>    these "Fixes:" footer, and record the reverse mapping locally, so
>>    that we can go from a commit whose brokenness is discovered later
>>    to the commit that fixes its breakage efficiently.  "notes" may
>>    be a good mechanism to implement this mapping, and we do not have
>>    to worry about sharing the notes trees among developers.
>>
>>  * The information is visible with "log --show-notes" if it is
>>    stored in local notes.  When an earlier commit that was later
>>    found to be broken is shown, the note that points at the commit
>>    that fixes it will be shown.
>>
>>  * Teach "bisect" to also take notice of this information, and
>>    temporarily cherry-pick while testing commits with fixes that
>>    were discovered later, in a way similar to what was suggested by
>>    Jiri Kosina in an earlier message.
>
> These sound like a good plan, indeed.
>
> But, one missing, and maybe often happening thing is: people forget to
> tag at the right time.  In the scenario above, if a maintainer forgets
> to add Fixes: tag in the fix commit, it's all gone?

Yes, unless you add it (using git-notes) as an annotation to the fix
commit, but then you're back to the (perceived) problem of sharing
those notes.

Alternatively, you would have to find a different mechanism for
developers to insert entries into their reverse mappings from
post-facto/missing "Fixes:" tags.


...Johan

-- 
Johan Herland, <johan@herland.net>
www.herland.net
