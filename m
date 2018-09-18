Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 062F7D07
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:17:15 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82FBB42D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:17:14 +0000 (UTC)
To: Matthew Wilcox <willy6545@gmail.com>
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
	<80c03d82-4de4-63bb-f692-109fccef61f7@suse.com>
	<CAFhKne-T1bTDE0QtDXxWBn7Quyk_kHes_XX=1yQAdMxVVx4zDg@mail.gmail.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <1e7100f5-5e45-633f-09b2-4982547789a5@suse.com>
Date: Tue, 18 Sep 2018 10:17:10 +0200
MIME-Version: 1.0
In-Reply-To: <CAFhKne-T1bTDE0QtDXxWBn7Quyk_kHes_XX=1yQAdMxVVx4zDg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/16/2018 02:45 PM, Matthew Wilcox wrote:
> Unfortunately I won't be in Edinburgh. My understanding was that the
> tech topics are for Plumbers. Since the user  space component is
> probably the more interesting and complex component, Plumbers is
> probably the better conference for a discussion anyway.
> 
Au contraire.

ATM most filesystems are not able to report any I/O error directly to
the application due to internal caching. An I/O error will only ever be
seen once the cached data is written to disk, but by then the fs has
already acknowledged the write to the application, so there literally is
no way of how we could signal the I/O error (other than setting the fs
read-only).

So from that it might be possible to switch to an asynchronous model of
signalling I/O errors much like DAX does nowadays.
IE we could signal errors to the filesystem via asynchronous methods,
and do away with the current synchronous model.

I guess some further discussion is warranted here.
Sadly I can't go to Vancouver, so we'll need to find another venue; LSF
next year?

Cheers,

Hannes
