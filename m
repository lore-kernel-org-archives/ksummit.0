Return-Path: <davem@davemloft.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 822FFA6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 14:46:06 +0000 (UTC)
Received: from shards.monkeyblade.net (shards.monkeyblade.net
	[184.105.139.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0972C131
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 14:46:05 +0000 (UTC)
Date: Fri, 21 Apr 2017 10:46:00 -0400 (EDT)
Message-Id: <20170421.104600.1075845589799892568.davem@davemloft.net>
To: alexandre.belloni@free-electrons.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20170421084155.v77xsfupsoage6a4@piout.net>
References: <cfd0f6a1-77e7-90e0-3726-f56e7ce6badb@redhat.com>
	<87tw5jscnw.fsf@intel.com>
	<20170421084155.v77xsfupsoage6a4@piout.net>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, gregkh@linuxfoundation.org,
	airlied@linux.ie, dledford@redhat.com, mingo@kernel.org
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Fri, 21 Apr 2017 10:41:55 +0200

> On 20/04/2017 at 11:31:31 +0300, Jani Nikula wrote:
>> On Wed, 19 Apr 2017, Laura Abbott <labbott@redhat.com> wrote:
>> > I brought up bug reporting last year and I still consider that to be
>> > an issue this year. A good example is
>> > https://bugzilla.kernel.org/show_bug.cgi?id=194911 which didn't really
>> > make progress until I sent out a separate e-mail thread summarizing
>> > the bisections people did.
>> 
>> The service level at https://bugzilla.kernel.org heavily depends on the
>> subsystem/driver. Some maintainers just ignore it completely.
>> MAINTAINERS now has the "B:" entry to document where maintainers want
>> bugs reported, and I'd like to see more maintainers document their
>> preferences there.
>> 
> 
> I think that addition has not been noticed by many maintainers and that
> is actually one of my pain point.

Indeed, I was completely unaware of this.  Now that I am I have added
an appropriate entry for the networking.

Thanks.
