Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 75CDD23F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 21:02:27 +0000 (UTC)
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
	[209.85.161.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1AF056CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 21:02:27 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id v198-v6so8070299ywg.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 14:02:27 -0700 (PDT)
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com.
	[209.85.161.48]) by smtp.gmail.com with ESMTPSA id
	x13-v6sm4044796ywj.89.2018.10.15.14.02.24
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Oct 2018 14:02:24 -0700 (PDT)
Received: by mail-yw1-f48.google.com with SMTP id v198-v6so8070267ywg.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Oct 2018 14:02:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F7D40E4F6@ORSMSX107.amr.corp.intel.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<1539202180.12644.10.camel@HansenPartnership.com>
	<3908561D78D1C84285E8C5FCA982C28F7D40E4F6@ORSMSX107.amr.corp.intel.com>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 15 Oct 2018 14:02:23 -0700
Message-ID: <CAGXu5jKKK76KRpujbudHQWwtcRHSKEQwBeGMBJf=31WjdCJA4A@mail.gmail.com>
To: "Luck, Tony" <tony.luck@intel.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Oct 10, 2018 at 2:04 PM, Luck, Tony <tony.luck@intel.com> wrote:
>> the enforcement clause of the new code of conduct.  Since there is concern
>> that this becomes binding on the release of the 4.19 kernel
>
> Is there some logic behind that concern? What's magic about the release
> of 4.19?

Greg KH said 4.19 was going to be the next LTS. But, regardless, if we
view bugs in the CoC as "just bugs", then can't we also include their
fixes in -stable? It'll land in 4.19.z just like anything else. I
don't think we need to rush anything into 4.19 -- as so many others
have said: it's in our best interest to take the time to get the CoC
right.

-Kees

-- 
Kees Cook
Pixel Security
