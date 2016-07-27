Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 322AE98D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:25:20 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 183D0160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:25:19 +0000 (UTC)
Message-ID: <1469636713.27356.67.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Howells <dhowells@redhat.com>
Date: Wed, 27 Jul 2016 12:25:13 -0400
In-Reply-To: <14105.1469635678@warthog.procyon.org.uk>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14105.1469635678@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-07-27 at 17:07 +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> >    4. Our current key type model is slightly confusing, because we have
> >       about 18 different ones from specific key types: assymetric, secure,
> 
> "secure"?  Do you mean "trusted"?

Yes, sorry I meant the trusted key types that currently use the TPM.

> >       encrypted confused with use case key types like: cifs.spnego,
> >       dns_resolver and grouping types like keyring.  We should probably
> >       document them all somewhere and encourage subsystems which don't use
> >       them (like dm crypt) to start.  We might also consider discouraging
> >       key type proliferation?
> 
> With hindsight, one thing I should've done right from the start is to search
> *only* on key description and not key type plus key description.  It might be
> too impractical to change that now - though it could be made possible to pass
> NULL as the type to keyring_search().  There are problems with doing this:

OK, can we do this now? because with this change we can look for the
key we actually want to use without knowing its mechanism, which is
kind of the point of keys, particularly asymmetric vs trusted keys
where they're an identical type of key, just one is implemented in
software and the other in the TPM hardware.

>  (1) The keyring associative array is indexed by key type and key description
>      for fastest access (the entire array can also be iterated over to find
>      things by other criteria).  Changing this affects the performance of
>      anything that wants to look up specifically by type+description, though
>      in actuality it might not be a problem.
> 
>  (2) Currently we don't permit two keys with the same type+description to be
>      in a keyring (adding one displaces the other).  If we look up only by
>      desc, we really need to tighten the restriction to require that keys must
>      differ on description, irrespective of type.  Note that this restriction
>      is a function of the assoc array.
> 
> Take AF_RXRPC and kafs as an example: they don't really want an rxrpc-type
> key, what they really want is a key that represents an old AFS KA service
> token, a kerberos 4/5 ticket or a gss token.

Right, that's why I find it confusing.  It confuses use case with
actual type.

>   The advantage of having an rxrpc-type key is that I get to parse 
> the token at key instantiation time rather than each time I request it or want to use it.
> 
> With something like a kerberos ticket, it would likely be possible to extract
> the relevant fields without knowledge of what it's going to be used for.
> 
> Another advantage of using the kerberos ticket key directly, is that it might
> make it possible to share with the in-keyring cache available to libkrb5.

OK, I'm no expert on kerberos.  I draw the line at understanding X509
and RSA keys ... purely in order to preserve my sanity, you understand.

James
