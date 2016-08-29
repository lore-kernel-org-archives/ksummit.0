Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E245360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:01:01 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0070.hostedemail.com
	[216.40.44.70])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 037CE1DB99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:01:00 +0000 (UTC)
Message-ID: <1472497256.3425.81.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 29 Aug 2016 12:00:56 -0700
In-Reply-To: <87lgzfihel.fsf@kamboji.qca.qualcomm.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<874m634yip.fsf@purkki.adurom.net>
	<1472473855.3425.18.camel@perches.com>
	<87lgzfihel.fsf@kamboji.qca.qualcomm.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 21:01 +0300, Kalle Valo wrote:

> there's now quite a
> difference with checkpatch parameters what other people use and what I
> use.
[]
> I find checkpatch very useful to maintain certain coding style in ath10k
> and I don't need to worry small details like whitespace. I just need to
> disable some of the warnings so that they don't hide the real warnings
> I'm interested about.

I don't see a conflict here.

The entire point of classifying all of those checkpatch
message types was to allow exactly what you are doing.
