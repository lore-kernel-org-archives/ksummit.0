Return-Path: <linus.walleij@linaro.org>
MIME-Version: 1.0
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
In-Reply-To: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Sep 2018 17:31:37 +0200
Message-ID: <CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
To: Peter Huewe <PeterHuewe@gmx.de>, Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 4:04 PM Peter Huewe <PeterHuewe@gmx.de> wrote:

> one topic I would like to discuss is: when is it time to remove support for old hardware?
> Should we support as much hardware as possible forever, or does it make sense to cut down the support?
> If so, when would be appropriate?

I've been thinking a lot about it. I just recently prepared a talk on the
subject.

My thinking has been something along the lines: if it has active
users we don't delete it, by the same token that we don't destroy
kernel interfaces that have active users.

Of course the definition of "users" is a bit complex there. In our
opinion the "users" are those who regularly compile new kernels
and test them, finds regressions, bisects problems and generally
do a good job in the community. Not ranting bloggers.

By this reasoning it is absolutely forbidden to propose something
like to delete arch/m68k (the last CPU M68060 produced in
1994 IIUC) as long as these maintainers put in an honest effort to
keep running that kernel on increasingly aging and hard to obtain
hardware like Apollo/Domain or Amiga 4000.

One day the last m68k users stops responding to regressions and
then it can be deleted.

My ARMv4 is another example, but I can point at new devices
beging deployed as we speak, using that ISA, even though it is
from 1999. So it has many active users (and maintainers).

(CC:ing the m68k maintainer, who is an awesome guy.)

Yours,
Linus Walleij
