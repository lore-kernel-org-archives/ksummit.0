Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94CE3CE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:19:02 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47449775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 21:19:02 +0000 (UTC)
Message-ID: <1539206340.12644.20.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luck, Tony" <tony.luck@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 10 Oct 2018 14:19:00 -0700
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F7D40E4F6@ORSMSX107.amr.corp.intel.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<1539202180.12644.10.camel@HansenPartnership.com>
	<3908561D78D1C84285E8C5FCA982C28F7D40E4F6@ORSMSX107.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v2 2/3] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-10-10 at 21:04 +0000, Luck, Tony wrote:
> > the enforcement clause of the new code of conduct.  Since there is
> > concern that this becomes binding on the release of the 4.19 kernel
> 
> Is there some logic behind that concern?

Well, yes, Linux as a project goes through numbered releases, so
releases are the usual official points we try to stop changing stuff,
so if we want to reset the expectation the committed CoC is final,
doing it before the release is helpful.

>  What's magic about the release of 4.19?

It's the first one after the CoC change.

> Our benevolent dictator committed that patch. Didn't it take effect
> as soon as he ran "git push" to make it visible to the world

Not usually: people usually have to agree to a change like this.  Of
course "agree" is a variable concept and can be as simple as not object
by a certain time or by using certain infrastructure.

James
