Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D6F32A91
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 12:59:07 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 717A1125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 12:59:07 +0000 (UTC)
Date: Wed, 28 Jun 2017 15:58:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20170628125819.vgmr63uw3hl5yoib@mwanda>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170627184448.GU21846@wotan.suse.de>
Cc: Christoph Hellwig <hch@infradead.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 08:44:48PM +0200, Luis R. Rodriguez wrote:
>   * We all seem to have decided having *both* depends and select is dumb.
>     So we decided we could remove select but fix tools first to give you
>     what you need:

They're totally different and both make sense.  You can select a library
but you can select an ARM.  Select is for hiding infratructure that
users don't care about and depend is for hiding features that users
can't have.

regards,
dan carpetner
