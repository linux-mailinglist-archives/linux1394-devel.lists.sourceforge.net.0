Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E65DB4D33B4
	for <lists+linux1394-devel@lfdr.de>; Wed,  9 Mar 2022 17:22:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nRz5H-0003jM-DE; Wed, 09 Mar 2022 16:22:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>) id 1nRz5F-0003jF-Kw
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Mar 2022 16:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kBERRZkwcPrCDXowwKAiYhn/eDzSZ/ACIzfxNh6mNmk=; b=Me3PK86BsK4A3bxRjgRaHo8Y95
 ZXupkmlbmMZxit8b4gZ7HGzgIQ3tcQmPq0iBcXKT4jYKamVZJiu1McQvsMtiFAA178cb5J6fnizEn
 F2IHTryXJJDUWZyUrmi52dagH18asE54iDkTNX+6es5kAgthXszeB0uojYeducrbed5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kBERRZkwcPrCDXowwKAiYhn/eDzSZ/ACIzfxNh6mNmk=; b=a
 l43SHTAQGI0WWQ8WHcH1vF0GUviE9nV5WZMdlo0YjnHXJhH9XyIuHbsd42idK1aG/AvcfNgQINKHu
 2uwrW/S+TeBYJEA4wexNI/UuqJuU25zsiSEGp44EMFIiwiwYvuV5iG9NhWcUNorcN/2S/wBSJqZpe
 unWBAH9kXHcF4qIs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRz5D-0007UY-Ki
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Mar 2022 16:22:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6A49F6193B;
 Wed,  9 Mar 2022 16:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C87DBC340F5;
 Wed,  9 Mar 2022 16:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842948;
 bh=Yu0TsGuK32wvpI2+J3C3f/SaYvUuvXGxBS3dMIFnfLU=;
 h=From:To:Cc:Subject:Date:From;
 b=h2MtXokjWYFs0We/K82MchVDJRT1q2LJL8bcsbZCMfN5nEsD6B+w9AxkaN1rlEnqu
 WSb9e+zw67BL7Gx33sqqqjc8SfbrYHCzjzJDJZzLrq3c70IQaRzteA5VdXj8y+TS0N
 d/LxuzQRymJujghUd2UKHCaeE3MCFl3FhDwEWhzl9X/5sQsYSdTeOSzeaz6mltrBXy
 rljTXKzcUASWuiuzfVi2RChiUxTRg/0V2o1/Akok3DZN+ZPyNtS+IlUCPuIFeIM+m/
 S7uryCUvdbPHrSA2jjRWhdH/e2q5yJ8VSgvAvhLcnC9SXCW2JLqG3vtWxwWwk2KgrH
 w+HAoifCtfwaA==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nRz50-00E6Ab-6y; Wed, 09 Mar 2022 17:22:26 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 0/5] media: sort Makefile entries
Date: Wed,  9 Mar 2022 17:22:20 +0100
Message-Id: <cover.1646842741.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Entries at Makefiles end being merged on random order. Sort
 them on alphabetical order. I'm preparing similar changes for Kconfig entries
 too. Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nRz5D-0007UY-Ki
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
Cc: Andy Walls <awalls@md.metrocast.net>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Michael Krufky <mkrufky@linuxtv.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Entries at Makefiles end being merged on random order. 

Sort them on alphabetical order. I'm preparing similar changes for Kconfig
entries too.

Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Mauro Carvalho Chehab (5):
  media: xc2028: rename the driver from tuner-xc2028
  media: platform: Makefile: group some Makefile options
  media: Makefiles: remove extra spaces
  media: dvb-frontend: remove TUNER_ from some DVB frontend Kconfig
    options
  media: Makefiles: sort entries where it fits

 .../admin-guide/media/i2c-cardlist.rst        |   2 +-
 MAINTAINERS                                   |   2 +-
 drivers/media/Makefile                        |   4 +-
 drivers/media/cec/platform/Makefile           |  16 +-
 drivers/media/common/Makefile                 |   4 +-
 drivers/media/common/b2c2/Kconfig             |   4 +-
 drivers/media/common/videobuf2/Makefile       |   6 +-
 drivers/media/dvb-frontends/Kconfig           |   8 +-
 drivers/media/dvb-frontends/Makefile          | 192 +++++++++---------
 drivers/media/dvb-frontends/cx24113.h         |   2 +-
 drivers/media/dvb-frontends/dib0070.h         |   2 +-
 drivers/media/dvb-frontends/dib0090.h         |   2 +-
 drivers/media/dvb-frontends/itd1000.h         |   2 +-
 drivers/media/firewire/Makefile               |   2 +-
 drivers/media/i2c/Makefile                    |  92 ++++-----
 drivers/media/pci/Makefile                    |  18 +-
 drivers/media/pci/cx18/cx18-driver.c          |   2 +-
 drivers/media/pci/cx18/cx18-dvb.c             |   2 +-
 drivers/media/pci/cx18/cx18-gpio.c            |   2 +-
 drivers/media/pci/cx23885/Kconfig             |   2 +-
 drivers/media/pci/cx23885/cx23885-cards.c     |   2 +-
 drivers/media/pci/cx23885/cx23885-dvb.c       |   2 +-
 drivers/media/pci/cx23885/cx23885-video.c     |   2 +-
 drivers/media/pci/cx88/cx88.h                 |   2 +-
 drivers/media/pci/ivtv/ivtv-driver.c          |   2 +-
 drivers/media/pci/ivtv/ivtv-gpio.c            |   2 +-
 drivers/media/pci/saa7134/saa7134-cards.c     |   2 +-
 drivers/media/pci/saa7134/saa7134-dvb.c       |   2 +-
 drivers/media/platform/Makefile               | 147 ++++++--------
 drivers/media/radio/Makefile                  |  42 ++--
 drivers/media/rc/Makefile                     |  45 ++--
 drivers/media/rc/keymaps/Makefile             |  33 +--
 drivers/media/spi/Makefile                    |   5 +-
 drivers/media/test-drivers/Makefile           |  13 +-
 drivers/media/tuners/Makefile                 |  66 +++---
 drivers/media/tuners/tuner-types.c            |   2 +-
 .../{tuner-xc2028-types.h => xc2028-types.h}  |   6 +-
 .../media/tuners/{tuner-xc2028.c => xc2028.c} |   6 +-
 .../media/tuners/{tuner-xc2028.h => xc2028.h} |   2 +-
 drivers/media/tuners/xc4000.c                 |   2 +-
 drivers/media/usb/Makefile                    |  25 +--
 drivers/media/usb/dvb-usb/Kconfig             |   6 +-
 drivers/media/usb/dvb-usb/cxusb.c             |   2 +-
 drivers/media/usb/dvb-usb/dib0700_devices.c   |   2 +-
 drivers/media/usb/em28xx/em28xx-i2c.c         |   2 +-
 drivers/media/usb/em28xx/em28xx.h             |   2 +-
 drivers/media/usb/gspca/Makefile              |  88 ++++----
 drivers/media/usb/tm6000/tm6000-cards.c       |   2 +-
 drivers/media/usb/tm6000/tm6000-dvb.c         |   2 +-
 drivers/media/usb/tm6000/tm6000-i2c.c         |   2 +-
 drivers/media/v4l2-core/Makefile              |  29 ++-
 drivers/media/v4l2-core/tuner-core.c          |   2 +-
 52 files changed, 450 insertions(+), 465 deletions(-)
 rename drivers/media/tuners/{tuner-xc2028-types.h => xc2028-types.h} (96%)
 rename drivers/media/tuners/{tuner-xc2028.c => xc2028.c} (99%)
 rename drivers/media/tuners/{tuner-xc2028.h => xc2028.h} (99%)

-- 
2.35.1




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
