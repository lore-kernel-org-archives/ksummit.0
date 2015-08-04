Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8A888EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:01:46 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 134091C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:01:37 +0000 (UTC)
Received: by obre1 with SMTP id e1so7660267obr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Aug 2015 07:01:37 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20150804125556.GA5180@mwanda>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
	<20150804125556.GA5180@mwanda>
Date: Tue, 4 Aug 2015 16:01:37 +0200
Message-ID: <CAMuHMdVi4YTe9Cg5y3dabSoYfcWtG3KfNkfmgZd8TDMMk4Wo+g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>, Russell King <linux@arm.linux.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
	or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 4, 2015 at 2:55 PM, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> Another thing which I have seems fairly common is treating it like
> kmalloc() and calling devm_kfree() manually.  For example, ssp_parse_dt()
>
> drivers/iio/common/ssp_sensors/ssp_dev.c
>    493          return data;
>    494
>    495  err_mcu_reset_gpio:
>    496          devm_gpio_free(dev, data->mcu_reset_gpio);
>    497  err_ap_mcu:
>    498          devm_gpio_free(dev, data->ap_mcu_gpio);
>    499  err_free_pd:
>    500          devm_kfree(dev, data);
>    501          return NULL;
>    502  }

These indeed look superfluous.

In some cases it may legitimate, though, when freeing memory not tied directly
to the lifetime of the device.
Cfr. drivers/media/platform/soc_camera/soc_camera.c, where the operation
may be retried later.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
