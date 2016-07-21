Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B64CF323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 17:16:36 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB4B424A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 17:16:35 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Herbert Xu <herbert@gondor.apana.org.au>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<20160711173329.GA8240@pc.thejh.net>
	<87y44xr5zp.fsf@x220.int.ebiederm.org>
	<CALCETrVeNP=2WRYdT7ePFx=MURao4-XFHyx9U+VQmpcmyLjLfw@mail.gmail.com>
	<8737n5caz8.fsf@x220.int.ebiederm.org>
	<20160720064228.GA32737@gondor.apana.org.au>
Date: Thu, 21 Jul 2016 12:03:31 -0500
In-Reply-To: <20160720064228.GA32737@gondor.apana.org.au> (Herbert Xu's
	message of "Wed, 20 Jul 2016 14:42:28 +0800")
Message-ID: <87poq653fg.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
	whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Herbert Xu <herbert@gondor.apana.org.au> writes:

> On Tue, Jul 19, 2016 at 09:14:03PM -0500, Eric W. Biederman wrote:
>> True.  I tried to review things to make certain they were safe in user
>> namespaces when I enabled things but clearly a few things slipped
>> through the cracks.
>
> What's worse is that after you enable them someone else can come
> along and add a new piece of functionality but still assuming
> that only root has access to it.  I encountered this with netfilter
> and rhashtable where the argument put forward was that as long as
> only root had access to a hash table then we don't have to worry
> about hash collissions.

Wow.  I missed that hash table discussion.

Yes.  People working on old assumptions is problematic.  Although I have
seen people in code reviews ask the question and what happens if someone
enables your code with user namespaces?  Which seems like a good sign.

Hopefully we can just retire the argument only root can do this, we
don't need to care about code quality.

Eric
