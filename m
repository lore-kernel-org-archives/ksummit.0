Return-Path: <tony.luck@intel.com>
From: "Luck, Tony" <tony.luck@intel.com>
To: Guenter Roeck <linux@roeck-us.net>, Jiri Kosina <jikos@kernel.org>,
	"ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Date: Fri, 8 Jul 2016 23:38:27 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
In-Reply-To: <5780334E.8020801@roeck-us.net>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> In addition to that, I'd again (like during the past 5+ years, but it
> never really happened) like to propose a stable tree discussion topic: I'=
d
> like to see an attempt to make the stable workflow more oriented towards
> "maintainers sending pull requests" rather than "random people pointing t=
o
> patches that should go to stable". This has been much of an issue in the

Shouldn't the common case be "Maintainer sends list of commit IDs to
be cherry-picked" rather than a pull request?

It's only when things get complicated that you fall back to:
1) commit to cherry-pick + fixup patch
or in extreme cases
2) Patch that does equivalent fix, but without having to pull in a ton
    of other things from mainline.

-Tony
