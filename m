Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9D86FAE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 13:41:38 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D6C82022F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 13:41:37 +0000 (UTC)
Date: Mon, 5 May 2014 09:41:26 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140505134126.GA22287@thunk.org>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<5366FBDB.7090705@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5366FBDB.7090705@huawei.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, lizf.kern@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 05, 2014 at 10:47:55AM +0800, Li Zefan wrote:
> 
> Yeah, but we can't expect other maintainers to do this. As Greg has been
> emphasizing, we'd want to add as little burden as possible for subsystem
> maintainers. With this in mind, focusing on fewer LTS kernels might make
> sense?

An LTS kernel becomes important when distributions or manufacturers
need to depend on one for their stable/enterprise distribution or for
some product release.  The problem comes when a stable kernel such as
3.10 gets declared, but some feature which is badly needed doesn't
make it into 3.11, say, or at the time when 3.10 gets declared, some
internal team had already decided to use 3.11.

So what might help is if companies or distributions who need a LTS
kernel were willing to disclose that fact ahead of time, and see if
they can find like-minded associates who also might need a LTS kernel
around about the same time.  Obviously if a company is willing to
dedicate resources to maintaining the LTS kernel they should have a
bit more say about which LTS kernel they would be willing to support.

I am aware of companies or distributions which are using 3.10, 3.11,
and 3.12 (yes, all three!) for different long-term product/production
kernels.  The company that used 3.11 didn't talk to anyone externally
before selecting 3.11, and so it's only right that this company live
with the consequences of that particular engineering decision.  But
yeah, with a bit of communication, I suspect it could have resulted in
a bit less work all around.

The challenge is that companies generally need to be able to make that
decision at least 3-6 months ahead of time for planning purposes, and
this requires that companies be willing to actually communicate their
stablization plans externally ahead of time.  Which, unfortuantely,
may or may not always be practical.

And of course, depending on how many patches get integrated into said
"enterprise" kernel, it might end up being very far from the official
upstream stable kernel, so it might or might not matter in any case.

Cheers,

					- Ted
