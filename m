Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89C65C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:30:09 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B58A206F5
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:30:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5B58A206F5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23AB3889C6;
	Mon,  6 Jul 2020 13:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPKTO2fXDeIj; Mon,  6 Jul 2020 13:30:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 788C2888CF;
	Mon,  6 Jul 2020 13:30:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4B6B2C0893;
	Mon,  6 Jul 2020 13:30:08 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0359C016F;
 Mon,  6 Jul 2020 13:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C558876C7;
 Mon,  6 Jul 2020 13:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yiebsWyaDZ5; Mon,  6 Jul 2020 13:30:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0057.hostedemail.com
 [216.40.44.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1B0E876C9;
 Mon,  6 Jul 2020 13:30:04 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id CF52A181D3039;
 Mon,  6 Jul 2020 13:30:03 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: pail57_0908a1c26eac
X-Filterd-Recvd-Size: 3207
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Mon,  6 Jul 2020 13:30:02 +0000 (UTC)
Message-ID: <10eeae911ab653036554f5599ba34406572acaa9.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy6545@gmail.com>
Date: Mon, 06 Jul 2020 06:30:01 -0700
In-Reply-To: <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name>
 <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
 <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
 <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Mon, 2020-07-06 at 09:04 -0400, Matthew Wilcox wrote:
> On Mon, Jul 6, 2020 at 8:59 AM Joe Perches <joe@perches.com> wrote:
> > On Mon, 2020-07-06 at 08:51 -0400, Matthew Wilcox wrote:
> > > In terms of number of lines of code using the word, it's only seventh
> > > in drivers/:
> > > 
> > > $ for i in drivers/*; do c=$(find $i -type f |xargs grep slave |wc
> > > -l); echo "$c $i"; done |sort -rn |head
> > > 5218 drivers/net
> > > 1341 drivers/dma
> > > 988 drivers/i2c
> > > 695 drivers/gpu
> > > 666 drivers/soundwire
> > > 665 drivers/spi
> > > 559 drivers/w1
> > > 461 drivers/infiniband
> > > 389 drivers/media
> > > 301 drivers/scsi
> > 
> > I get rather different and much lower numbers
> > 
> > $ git grep -i -w slave drivers | \
> >   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
> 
> That's because you're using grep -w which excludes, for example,
> slave_configure in drivers/scsi.

upper/lower case uses too...  (anyway, there are a lot)

$ git grep -i -w -P '\w*slave\w*' drivers | \
  cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
     1	   5683 drivers/net
     2	   2118 drivers/gpu
     3	   1807 drivers/dma
     4	   1389 drivers/i2c
     5	    866 drivers/interconnect
     6	    835 drivers/soundwire
     7	    821 drivers/spi
     8	    698 drivers/w1
     9	    508 drivers/media
    10	    481 drivers/infiniband
    11	    440 drivers/ata
    12	    317 drivers/scsi
    13	    267 drivers/fsi
    14	    240 drivers/tty
    15	    225 drivers/vme
    16	    223 drivers/staging
    17	    157 drivers/mmc
    18	    155 drivers/usb
    19	    141 drivers/video
    20	    140 drivers/char


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
