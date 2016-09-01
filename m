Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A362957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Sep 2016 02:01:19 +0000 (UTC)
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A85A61DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Sep 2016 02:01:18 +0000 (UTC)
Received: by mail-pa0-f53.google.com with SMTP id cy9so24242288pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 19:01:18 -0700 (PDT)
From: Alex Shi <alex.shi@linaro.org>
To: ksummit-discuss@lists.linuxfoundation.org, Mark Brown <broonie@linaro.org>
Message-ID: <57C78BE9.30009@linaro.org>
Date: Thu, 1 Sep 2016 10:01:13 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: ltsi-dev@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: [Ksummit-discuss] [Stable kernel] feature backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi All,

I am a Linaro stable kernel maintainer. Our stable kernel is base on LTS
plus much of upstream features backporting on them. Here is the detailed
info of LSK: https://wiki.linaro.org/LSK
https://git.linaro.org/?p=kernel/linux-linaro-stable.git

These kind of backporting features are requested by many LSK members
which most are leading ARM product vendors. LSK target on the feature
backporting collaboration, to reduce the duplicate work on that. Current
LTSI: https://ltsi.linuxfoundation.org/what-is-ltsi, has
similar target for backporting collocation. but there are still couples
problems.

1, LTSI is focus on board support more than feature backporting

2, ltsi kernel version 3.10/3.14/4.1 is older than LTS and LSK 3.18/4.1/4.4.

3, merge everything together isn't good for some users and can not give
user option to select preferred kernel feature. On the contrary, each of
feature backported separately on latest LTS in LSK, user can just pick
their wanted features and merge them for their own kernel.

4, all vendor specific driver in one branch get complains and developing
status make it hard to handle changes in a fast-forward stable kernel.

As to LSK, although most feature are ARM related, but LSK also provide
some common feature which works on other archs, like cgroupv2, RO-vDSO,
KASAN, PAX_USERCOPY, etc. I believe this common backporting is also
useful for common industries.
If so, could we call a better way for feature backporting collaboration?

Regards.
Alex



=== lsk backported features ====
Coresight
Coresight-TMC/ETM
IPA
dm-crypt performance
OPP v2
PCIe for arm64/Juno R1
PAN
OF-overlay
PSCI
Cgroup-writeback
RO-vDSO
KASan
KALSR
IOMMU DMA
Hibernate on arm64
Devfreq cooling
PAX_USERCOPY
