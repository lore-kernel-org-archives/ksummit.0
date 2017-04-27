Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7723B35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 15:50:04 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7A5E31A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 15:50:03 +0000 (UTC)
Date: Thu, 27 Apr 2017 17:40:53 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20170427154053.usbwrgrbpgpzl4li@ninjato>
References: <CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda>
	<yq1h91be0do.fsf@oracle.com>
	<1493217078.2526.8.camel@HansenPartnership.com>
	<alpine.LSU.2.20.1704261633140.12121@cbobk.fhfr.pm>
	<1493217836.2526.10.camel@HansenPartnership.com>
	<87h91arzic.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lqn24dkc4hsynho7"
Content-Disposition: inline
In-Reply-To: <87h91arzic.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	David Miller <davem@davemloft.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--lqn24dkc4hsynho7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> On a related note, as maintainers I think we need to put more attention
> to recording the review credits in the commits. It's not unusual for
> review to be more work than writing the patch. The patch authors may be
> new contributors, or just looking at their specific use case, but the
> reviewer should look at the big picture. I think Jon will start tracking
> reviews more regularly, like he did for v4.11 stats [1], but obviously
> the stats are only as good as the input.

I fully agree to this. I hacked git-request-pull to include a list of
people who reviewed or tested patches. The patch is quite a hack,
though. As it works for me(tm) nonetheless, I finally set up a repo
where I will put such snippets which help me in maintaining my
subsystem. And I started the latest version of said patch a minute ago.
So, if other people are interested, it should be more accessible now:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/snippets.git

To get you an idea, here is some example output. More details can be
found in the patch description itself:

=== standard pull-request

The following changes since commit
a121103c922847ba5010819a3f250f1f7fc84ab8:

...

Vlad Tsyrklevich (1):
      i2c: fix kernel memory disclosure in dev interface

=== new stuff starts here

with much appreciated quality assurance from
----------------------------------------------------------------
Andy Shevchenko (1):
      (Rev.) i2c: piix4: Avoid race conditions with IMC

Benjamin Tissoires (1):
      (Test) i2c: do not enable fall back to Host Notify by default

Vladimir Zapolskiy (1):
      (Rev.) i2c: print correct device invalid address

=== diffstat, ...


--lqn24dkc4hsynho7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlkCEQEACgkQFA3kzBSg
KbYL+w/9GRB3ceUjnYBvPJMsv/kXKOXohpY3wYP6WKKGWSFqbzLNG3q7/0mMVnWh
JO1KJCWsn1l8Ua4deAvDWA+hicPq04IIKU0aFlBQ/RCcLhizyN9fNS9dP1J1jh8j
dkpaqNqjnKKKIzXEoMiTeO7xlKXjs8QeJb026HkuI9OT+dDFCBcYnMAPZ1BHHj2u
YOwCSUNd0Kk1brkxbb78RrzLlQAKqD1BcTdy0XxP3QtfoNG/kxpPYcZ9MTchrYig
q/vs+7SJ0TzHSOztPFJWnPP2SDKr3yVXSocjMrbCriiWMVZra4Elb94ce+607GD0
Im8nhplsikWv4HsK1Q4tfm6nGm37B2l9j3YKv6IhEoC08mou/4dIRwj+bRUTF2eY
JwRZrtUDtnd+NdOjMHIDHAshk83x+0RwGsJGnlWbszFEjGTwVQM7j4oMf2P0fzhk
dWaPwcw/Yxti9LWJrd3c5GzDlKFNwqizvKYncsns+onixduMb2vtKEjvs2SJttrL
kqg/NLR3XkgaJMwls1OhOdBrKGWitDyA94h/MoKgdkr+65Co/KcZI6pTrs7Tl14i
Kgp3vsBISYse6hKxa+SUlTxN4IRjEQ1ja3uoRtJkHlZluXcnLglC8kHa87Bc2mZE
lHhIbedidGYIwFZhqyugnEn5KphcSGoCT9R77CIzSps83cN94PQ=
=tziO
-----END PGP SIGNATURE-----

--lqn24dkc4hsynho7--
