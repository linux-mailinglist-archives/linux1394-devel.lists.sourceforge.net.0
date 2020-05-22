Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C651DEE7C
	for <lists+linux1394-devel@lfdr.de>; Fri, 22 May 2020 19:45:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jcBjB-0002ko-G8; Fri, 22 May 2020 17:45:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jcBjA-0002kZ-81
 for linux1394-devel@lists.sourceforge.net; Fri, 22 May 2020 17:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7erRvSoNhA31wmPB9BbJ7P0hKnwItvhoaIS4kuMC6eU=; b=ik+GPAp1MeM9NBZRdHvDFIeMHv
 nhDwbDg6vB1Jdhdv893V7JJthNcpWzaMkFoJiv2erbngKrPKhcOTqAbFojVSINdheiRD0Iea8CPkB
 EUJUlQPI4u5FDNAv8of92ZTiVD1J/pU4aDvcLM0oG+kCdPpvPjdtybxQ3TnFistM052w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7erRvSoNhA31wmPB9BbJ7P0hKnwItvhoaIS4kuMC6eU=; b=VYqaL0dkRXJgYstAGz9Y1o73T0
 cEeDVZyBIgLB4Ee4jdDe0zQo5qTjCyCwhM9VZdZSrEQrr54A6+bfg+2CcIM0UuW7Z6Rca79Ckoy2b
 5HL0yaLw5OZ+QJHMCNgvmi+NQ+xrlz4BxRAwLHo4oseqV/Ew72J4Tom9sLEnWxu8C6HI=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jcBj8-002bA6-Et
 for linux1394-devel@lists.sourceforge.net; Fri, 22 May 2020 17:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1590169391;
 bh=7erRvSoNhA31wmPB9BbJ7P0hKnwItvhoaIS4kuMC6eU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Hjb4bMhdlR7sHNtV5d99R1eTX76MUX6R8s19tj8FxXmSqZm7UWLO3ZUNpjUo7IH2o
 h3bW8Xfb9O/dq0ewfIpoSfoDR+iULVdTEEaTuQpdOJgDNJ6zlv1k1v82zqJHSwKDCf
 aEtdaMHfhJenrWaYH8+6zqeH1tUdh9Y8OTnWl+/c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MEUzA-1jnmHF0YFG-00G09d; Fri, 22
 May 2020 19:43:11 +0200
Date: Fri, 22 May 2020 19:43:08 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH v2] firewire: Remove function callback casts
Message-ID: <20200522174308.GB3059@ubuntu>
References: <20200519173425.4724-1-oscar.carter@gmx.com>
 <20200520061624.GA25690@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520061624.GA25690@workstation>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:jDAMWBN6i5llv7LuCYMCYADueBSFhw0jntdkKB6FtXgQAyx1hJ0
 UK/B3pkqK3wWld06+HtcL3GkrxXPNbPMNAqzx2IiY12Voy7K4SX+svFljoBoq5qXh/T7Rig
 z25dmI8qQlmwS63YSWgzLAI0IC/I/rDgLrfpj7LYiKY5vHVkg4mYH0yBuPPN1gBnQLtb+F/
 AguVGShVfnafJ5CncWSSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GoeMsB1jtDE=:f9abdmhLj0xQdohvGCIalV
 RRr72hC0sw4q03hwh9q6iZsJqgjZL+erf6n/hPv891ZNZ0EmrMajxwVeV1piFHMEQ1PNxe9ZO
 R0CO+94Jkk6VaWfPzxD9WWVfMD1U4o4Q60bshu6W94Eb+DpNjgwzqbt8XaiXgu4xF/kxgi6AD
 jTnjNbZ/5YXPsL+VKZk7f1eEjyeJ49Vml8+aKYzKc+M+z1hMOIQFbTZcDK+2E0UPmx6rT7A5V
 6DxS0MTInOhwCEMAldomHIUzDTGkCVGqLc7uqYH0u/t6ctXaoMXNdKVGyjKqDbjcHkYwdoenv
 7Rlz1ho0CewPY8rdpdsRPCVNzQ3yAk63kjdEmJTlvK76723QOu8KuVG9KSjL85dCi0y1i0Up6
 mfUX8KdAyBqk3hf8STiJ6E9lf5bbWiGgN8BYDG3QvaaMi2YVbNqjbG/NgU2HZBBuo+2JZXKk/
 /RO6puoh0Woykd4I2glBIzHgoAn4Lm8BDBi1OY5/Chx1sKBTxYAqtmFW7KmNyq9zg7QSAKSze
 Lzdw+ZUtuDWpZgNWftZur8yIMd24KzXcT5VM26Vq4dwIFzYkbhyvr1d2Ui2z/8b4bV8rohOfW
 32F+csIz3oVjEsS3MF0Qzd7nW6mBKSaQSPJ817BPh8aWgtqfx6jt2fbCPTNZR4xHli8rF2Kxc
 4Z8cJSGrGyeUIw1GpWX1isqAVFz9P1kQBAgWPf1gg9o6gEJY01D49F5OJdOWBpOYV0MiRQP+j
 QGddvUqdWnbHx0kBirh/xHbESmUmMoWcnfCWBZF7Yxq89CSxY3NaFO8H/EIdn4wjyK5BMIM/o
 6fFodZTD9HBhh7mJA0xto2tGLlexg1gcOxdERLm9d/idYGQz4D1847at8QQoHSjofFSlTJnIo
 TGv4kc770h463ljQXj5ail7euijbHEgqol3fyuxrS5r5ss4S8qDIgxVF0pjjKXvWauJ02QfFj
 m/9N/VKLX+uuZfnzAcDwFI0KxrH/Wf8m3KGiO16g5Jt+5tnbkKagWmBFtzL+s7fSGlC/bNXMx
 FfaAaWscHhBfqIf7OKdh4iagaUAftDCCttPxJuTLv7kgQsiN3VcrhMVZw+WWDVgo0bxORmirk
 Y0VTuutuRLEuSNhnNz0XNqyeNiKTtJ+lptB3svnF70r/OsHJYeypP3rd69hSDygUEhgAHpjVX
 K8/xowWz3py24xUVPm8BaobxgIuMgGrnIOw1/BGo/XnGZ4MM2390yOLpjMIepLDJ1bccAq4uj
 eatIuI5MNkUo7Kj9P
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcBj8-002bA6-Et
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Oscar Carter <oscar.carter@gmx.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 "Lev R . Oshvang ." <levonshe@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, May 20, 2020 at 03:16:24PM +0900, Takashi Sakamoto wrote:
> Hi,
>
> I'm an author of ALSA firewire stack and thanks for the patch. I agree with
> your intention to remove the cast of function callback toward CFI build.
>
> Practically, the isochronous context with FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL
> is never used by in-kernel drivers. Here, I propose to leave current
> kernel API (fw_iso_context_create() with fw_iso_callback_t) as is.
> Alternatively, a new kernel API for the context (e.g.
> fw_iso_mc_context_create() with fw_iso_mc_callback_t). This idea leaves
> current drivers as is and the change is done inner firewire-core driver,
> therefore existent kernel API is not changed.
>
It sounds good to me.

> Later I post two patches for the proposal. I'd like you to review it and
> I'm glad to receive your comments.
>
I will take a look at your proposal. Thanks for your time and work.
>
> Regards
>
> Takashi Sakamoto

Thanks,
Oscar Carter


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
