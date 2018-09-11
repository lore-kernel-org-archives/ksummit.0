Return-Path: <groeck7@gmail.com>
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 11 Sep 2018 11:27:06 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180911182706.GB21160@roeck-us.net>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<CACRpkdYk1JKEQ=bumrxRk1eJ97xkQti8E1MRJ_xxen+dZ1a1Xw@mail.gmail.com>
	<CAK8P3a0a=eAwAg5i6z-5Hs56BXKP3CSsv2383zuMh6TrrDPwug@mail.gmail.com>
	<20180910220208.GB17966@roeck-us.net>
	<CAMuHMdXm3i7ihWDQCfqt-rDtL4t_zE=bPJj_e=tVzF1HV-dutA@mail.gmail.com>
	<20180911172741.GA2767@roeck-us.net>
	<CAMuHMdU-M7zBbQ-BBu6gF=6X+TnX9y207ADzKJ1i+VanxRFCdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdU-M7zBbQ-BBu6gF=6X+TnX9y207ADzKJ1i+VanxRFCdQ@mail.gmail.com>
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

On Tue, Sep 11, 2018 at 07:58:48PM +0200, Geert Uytterhoeven wrote:
> Hi Günter,
> 
> On Tue, Sep 11, 2018 at 7:27 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > On Tue, Sep 11, 2018 at 10:49:25AM +0200, Geert Uytterhoeven wrote:
> > > On Tue, Sep 11, 2018 at 12:02 AM Guenter Roeck <linux@roeck-us.net> wrote:
> > > > On Mon, Sep 10, 2018 at 11:40:59PM +0200, Arnd Bergmann wrote:
> > > > > One architecture (unicore32) got saved in the last minute by
> > > > > the maintainer saying that he'd rather keep it in tree, despite not
> > > > > even having a publicly available toolchain with sources.
> > > >
> > > > unicore32 no longer builds with the mainline kernel because the
> > > > (private) toolchain is too old (gcc < 4.6), so it may be time
> > > > to revisit that decision.
> > >
> > > I'm still building mainline with gcc-4.1.2, using:
> > >
> > >     git revert 815f0ddb346c1960 # "include/linux/compiler*.h: make
> > > compiler-*.h mutually exclusive"
> > >     git revert cafa0010cd51fb71 # "Raise the minimum required gcc
> > > version to 4.6"
> > >
> > > leading to one recent bug fix:
> > >
> > >     https://lore.kernel.org/lkml/20180823212738.18431-1-geert@linux-m68k.org/
> > >
> > > and two code improvements:
> > >
> > >     https://lore.kernel.org/lkml/20180823212436.17423-1-geert@linux-m68k.org/
> > >     https://lore.kernel.org/lkml/20180823213027.18856-1-geert@linux-m68k.org/
> >
> > Interesting. How to you manage to not hit the problem reported with
> > https://lkml.org/lkml/2018/8/14/472 ?
> 
> Sorry, I forgot I have also applied Andrew's wibble patch:
> https://lore.kernel.org/lkml/20180814160208.4f4dd7ca142912f5894ddddd@linux-foundation.org/
> 

Hmm. I don't really want to have to maintain a set of patches on top upstream
and stable kernels to be able to run my tests. I do have a set of configuration
options to apply, but anything beyond that is, in my opinion, out of scope
for (at least my) testing.

Thanks,
Guenter
