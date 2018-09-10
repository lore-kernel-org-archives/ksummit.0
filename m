Return-Path: <PeterHuewe@gmx.de>
MIME-Version: 1.0
Message-ID: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
From: "Peter Huewe" <PeterHuewe@gmx.de>
To: Ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Date: Mon, 10 Sep 2018 16:04:44 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of old
	hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

one topic I would like to discuss is: when is it time to remove support for old hardware?
Should we support as much hardware as possible forever, or does it make sense to cut down the support?
If so, when would be appropriate?

One concrete example is in the TPM subsystem - we have support for TPM1.1b based devices there, which haven't been manufactured since probably 10 years.
These still compile, load and probably function well enough but are not really tested or reviewed on a regular basis.
Maybe they even have some issues, security or otherwise.

We haven't removed them yet, despite plans to do so, as there still might be some users out there.
This lead to more a complicated code for the 'generic' tpm drivers as they still have to support 'old' workarounds.

I think the same applies to the whole kernel in general and other subsystems - do we have to much old code lying around, waiting to rot and blocking better code?
How should we aproach phasing out support for old hardware?


Thanks,
Peter
