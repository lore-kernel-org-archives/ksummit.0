Return-Path: <robh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A2A5DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 17:49:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3646318A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 17:49:26 +0000 (UTC)
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C365121948
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 17:49:25 +0000 (UTC)
Received: by mail-qk0-f179.google.com with SMTP id 17so17170949qkq.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Oct 2017 10:49:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACxGe6tfRByeJrp43Taj166K4Ni0KjmZkC=Xc1pz2=ga6fvDZQ@mail.gmail.com>
References: <CACxGe6tfRByeJrp43Taj166K4Ni0KjmZkC=Xc1pz2=ga6fvDZQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Oct 2017 12:49:04 -0500
Message-ID: <CAL_Jsq+rZ6nNJnxNq6mrGEeb6RLmyAhG4V+K8uqG_irDR_BCsA@mail.gmail.com>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset="UTF-8"
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Kumar Gala <kumar.gala@linaro.org>,
	Sean Hudson <darknighte@darknighte.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Rob Herring <rob.herring@linaro.org>,
	"devicetree-spec@vger.kernel.org" <devicetree-spec@vger.kernel.org>,
	Kanta Vekaria <kanta.vekaria@linaro.org>,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [Ksummit-discuss] Notes & Slides from Devicetree Workshop at
 Kernel Summit Prague (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 30, 2017 at 11:01 AM, Grant Likely
<grant.likely@secretlab.ca> wrote:
> Thank you to everyone who attended the Devicetree Workshop as part of
> the 2017 Kernel Summit in Prague last week. I heard lots of good
> feedback, and I'm already thinking about how to organize next year's
> gathering.
>
> Slides and notes have been uploaded to elinux.org. A summary of the
> topics and next steps still needs to be written. You can find the
> notes and slides here:
>
> https://elinux.org/Device_tree_future#Kernel_Summit_2017.2C_Devicetree_Workshop

Grant, your slides are from 2016 LPC. Is that the right deck? (It's
also ODP, not PDF as labeled in the wiki.)

>From the notes, I don't get a sense if there's some direction on JSON
Schema vs. eBPF. Any comments on that.

Rob
