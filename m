Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 72BA221
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 21:57:17 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1780C20335
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 21:57:17 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Daniel Phillips <d.phillips@partner.samsung.com>, Theodore Ts'o
	<tytso@mit.edu>, Arnd Bergmann <arnd@arndb.de>
Date: Tue, 6 May 2014 21:56:31 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F327FAE35@ORSMSX114.amr.corp.intel.com>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <53695159.60107@partner.samsung.com>
In-Reply-To: <53695159.60107@partner.samsung.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> and going out with the sign bit set. Perhaps some logging mechanism=20
> would be helpful in setting up audit systems to use in sandbox testing=20
> and triage on Jan 1, 2038, with a view to clawing back the sign bit.

We can't wait till Jan 2038 to commit a change - programs want to
work with dates in the future - allegedly the first Y2038 bugs began
appearing in 2008 when banks issuing 30 year mortgages were unable
to print the correct date for final payment.

-Tony
