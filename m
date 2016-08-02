Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E5F79CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 12:20:13 +0000 (UTC)
Received: from outbound1a.ore.mailhop.org (outbound1a.ore.mailhop.org
	[54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1780E157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 12:20:12 +0000 (UTC)
Date: Tue, 2 Aug 2016 12:20:05 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160802122005.GI4541@io.lakedaemon.net>
References: <20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
	<20160801230435.GF4541@io.lakedaemon.net>
	<CALCETrUwNdXdww5Bat908reeDiXmu3FsNTQg6NTJ5G71ZoRZ-A@mail.gmail.com>
	<20160801233036.GH4541@io.lakedaemon.net>
	<CALCETrWDsMdU2-AWQC4wYvotnNd2ydWT15Ckq0nZaNRJZOtZ-g@mail.gmail.com>
	<CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
	<CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Morning Andy,

On Mon, Aug 01, 2016 at 04:45:20PM -0700, Andy Lutomirski wrote:
> On Aug 1, 2016 4:30 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
> > On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wrote:
> > > On Aug 1, 2016 4:04 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
...
> > > > Assuming Andy's lightweight signature scheme, it would probably be best
> > > > to do a lookup based on the sha256 hash of the file.  Then pathnames
> > > > don't matter, and bad files don't even get to the signature checking
> > > > code.
> > > >
> > >
> > > I'm not sure I understand what you mean.  What table would we look the hash
> > > up in?  What are we finding in that table?
> >
> > From the other subthread:
> >
> > > Then, to verify a signature, the kernel hashes the blob, generates its
> > > own linux_blob_signed_data, memcmps it to the one that Kyle signed
> > > (and rejects if they differ *at all*), and then verifies the
> > > signature.  (Do not try to be clever and parse the supplied
> > > linux_blob_signed_data -- there is a long and storied history of
> > > equivalent ideas being implemented incorrectly, and I can dig out
> > > literature references if you really want.  Just generate your own and
> > > memcmp it, which leaves no room for ambiguity.)
> > >
> >
> > So, I'm suggesting that when "the kernel hashes the blob", it use that
> > hash to locate *which* "Kyle-signed" linux_blob_signed_data it needs to
> > compare against.  That's all, just removing the filename from the
> > equation. :-)
> 
> So Kyle would generate a list of signatures indexed by the blob's hash
> instead of generating things like "iwlwifi-whatever.ucode.sig"?  Seems
> okay.  It'll keep the existing hooks working, I think.  Of course, we still
> need to check the "iwlwifi-whatever.ucode" bit to confirm that it matches
> Kyle's signed data.

Right.  That's where it may be better to use a version string, say the
sha1 from linux-firmware.git, or the upstream version number.  However,
that route means we can't easily 'build our own linux_blob_signed_data
and do a memcmp.' since userspace may not have that info handy.

It's almost as if we need some *unsigned* attributes that are purely
informative.  So we can dump a message in the logs:

  Loaded /lib/firmware/intel/iwlwifi-whatever.ucode., signature match for 'iwlwifi-20160711.ucode', signed by "Intel, Corp" RSA4096 key with
keyid <sha256>.

The first path is the actual location and name of the file, and the
second is the filename attribute that is a hint, but we don't depend on
it for matching or verification.

thx,

Jason.
