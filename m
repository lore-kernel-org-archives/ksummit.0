Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07AAB273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Aug 2015 07:03:16 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7670310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Aug 2015 07:03:14 +0000 (UTC)
Date: Thu, 13 Aug 2015 09:03:08 +0200
From: Jan Kara <jack@suse.cz>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150813070308.GA26599@quack.suse.cz>
References: <1438121016.5441.233.camel@HansenPartnership.com>
	<16035.1439324695@warthog.procyon.org.uk>
	<11239.1439403720@warthog.procyon.org.uk>
	<1439405139.3100.147.camel@infradead.org>
	<CALCETrXJ6MMQs6s_PqZKbd36Q-V_PMXK_Kg_tQb7bre4jF_WfQ@mail.gmail.com>
	<1439406931.2825.74.camel@HansenPartnership.com>
	<CALCETrXMdYL9ca1Rjh8LAe9zbOCAqWhUXm6-AbGBzdeu7ur6DA@mail.gmail.com>
	<1439408625.2825.79.camel@HansenPartnership.com>
	<CALCETrVpan_mzh-EHziskuMTM0q31w3vyc11p7OwBiuPJ-KAnA@mail.gmail.com>
	<1439409591.2825.86.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1439409591.2825.86.camel@HansenPartnership.com>
Cc: Kyle McMartin <jkkm@jkkm.org>, Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 12-08-15 12:59:51, James Bottomley wrote:
> On Wed, 2015-08-12 at 12:45 -0700, Andy Lutomirski wrote:
> > On Wed, Aug 12, 2015 at 12:43 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > On Wed, 2015-08-12 at 12:25 -0700, Andy Lutomirski wrote:
> > >> All that's moot, though.  IMO the only reason we should support RSA
> > >> here is if there are vendor keys already out there (or Authenticode,
> > >> sigh) that use RSA.  RSA keys and signatures are rather large.
> > >
> > > In either case security rests on the discrete log problem.
> > 
> > RSA is based on factoring, not discrete log.
> 
> Security is based on the discrete log:  RSA relates the private to the
> public key via an inverse operation:  if you can solve the discrete log
> problem, you can recover the private key from just the public key.  If
> you can factor n in RSA, you can also recover the public key.  It is a
> theorem that these two problems are effectively equivalent.

As the reference Andy gave explains, it depends on the exact definition of
the "discrete log problem". Discrete log operation can be defined for
arbitrary group. Knowing how to solve discrete log problem for some groups
(e.g. for Z_p where p is a prime) doesn't easily give you a way to infer
private RSA key from a public one. If you can solve discrete log for
Z_{p*q}, then yes, you can break RSA as well.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
