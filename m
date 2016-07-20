Return-Path: <herbert@gondor.apana.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E97298F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 06:43:03 +0000 (UTC)
Received: from helcar.hengli.com.au (helcar.hengli.com.au [209.40.204.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AB2A79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 06:43:01 +0000 (UTC)
Date: Wed, 20 Jul 2016 14:42:28 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160720064228.GA32737@gondor.apana.org.au>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<20160711173329.GA8240@pc.thejh.net>
	<87y44xr5zp.fsf@x220.int.ebiederm.org>
	<CALCETrVeNP=2WRYdT7ePFx=MURao4-XFHyx9U+VQmpcmyLjLfw@mail.gmail.com>
	<8737n5caz8.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8737n5caz8.fsf@x220.int.ebiederm.org>
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

On Tue, Jul 19, 2016 at 09:14:03PM -0500, Eric W. Biederman wrote:
> True.  I tried to review things to make certain they were safe in user
> namespaces when I enabled things but clearly a few things slipped
> through the cracks.

What's worse is that after you enable them someone else can come
along and add a new piece of functionality but still assuming
that only root has access to it.  I encountered this with netfilter
and rhashtable where the argument put forward was that as long as
only root had access to a hash table then we don't have to worry
about hash collissions.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
