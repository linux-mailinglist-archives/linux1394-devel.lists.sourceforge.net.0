Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8584D62E4
	for <lists+linux1394-devel@lfdr.de>; Fri, 11 Mar 2022 15:08:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nSfw9-0007IJ-FS; Fri, 11 Mar 2022 14:08:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>) id 1nSfw8-0007I5-7H
 for linux1394-devel@lists.sourceforge.net; Fri, 11 Mar 2022 14:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SkGHyALrMEEzLtAlSEjZWYganvHs9H5x9M77ROcRmA8=; b=OFpxNYNxfWv756uZdc6lS6b4qj
 Ci8OpDS8tbU79C9xGKDwc3Y16DEb4dPDS2b9aL/xdSb88oL3IPFVJxER/rBwgfPnUET5xu9rKYErY
 UIXua+pkdzy8ctuhnKOrczP1Uw2VTWFPsV1sgYi/Zjgnt5K9o1J4eo3+zNpt/nyEkD/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SkGHyALrMEEzLtAlSEjZWYganvHs9H5x9M77ROcRmA8=; b=SBPF9xzylR+ptZGdyFk8xizBFQ
 MxT/j0Jkj9hyhHHDSdfDd7cUkvbm42KMjPnGumP3Et0JXD4Dj8iSH2+0/328QPZMDOBF7UJHcmDw5
 nWpsjOWjl2ftL/JPPK8q+9JJLZvwP33RExMrY+2JDdpJdXJoyR9x1cXEfT8e+V6JiGVk=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSfw4-0000Nv-8k
 for linux1394-devel@lists.sourceforge.net; Fri, 11 Mar 2022 14:08:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BADA1B82C0F;
 Fri, 11 Mar 2022 14:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2A6C340ED;
 Fri, 11 Mar 2022 14:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647007676;
 bh=lTvzeKs9ITq/Oly2F8O6WN1u5dgqJJVcKMHPif1bZQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=idyR23/RLg63V0lw5ef74EAMUnAKbYUZf+DFJN5bWy++44Za0mVacVwXgnVDBsN3t
 /A7Z13BCk1I9VZeokQCgmCAZW1k7y9AJmTpelSbKvaTipjGDnJY8tYfgHUGk73COSL
 UkDKC1PyaLtlnn7e+vqNVNjO5PLCcUpvpxPBC6Ozi0Q3t5JoLNDHcS1eIiyX1KVQd/
 s8NlMBD3h0mYxRZuFeoNSWsj2qRNXym2O1ZB+XjcHmqHMOZPE8jCe60hCC4iCKhZh6
 7pUmMkhxxKGXgDseabng1g1aissTzxkTvQNyJKSXFsw4YEp9DqSKAmNanfmO7Q3mwy
 tvmMvWfPKHjFw==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nSfvt-000lAd-Ht; Fri, 11 Mar 2022 15:07:53 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Subject: [PATCH v2 02/38] media: Makefiles: remove extra spaces
Date: Fri, 11 Mar 2022 15:07:15 +0100
Message-Id: <0bec5b3ed228f2d49b3fefb25061b380c8133044.1647006877.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647006877.git.mchehab@kernel.org>
References: <cover.1647006877.git.mchehab@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is hard to keep all those options aligned as newer config
 changes get added, and we really don't want to have patches adding new options
 also touching already existing entries. So, drop the extra spaces. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1nSfw4-0000Nv-8k
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
Cc: Shawn Tu <shawnx.tu@intel.com>, Arec Kao <arec.kao@intel.com>,
 Martina Krasteva <martinax.krasteva@intel.com>, linux-kernel@vger.kernel.org,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Daniel Scally <djrscally@gmail.com>, Martin Kepplinger <martink@posteo.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

It is hard to keep all those options aligned as newer config
changes get added, and we really don't want to have patches adding
new options also touching already existing entries.

So, drop the extra spaces.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/38] at: https://lore.kernel.org/all/cover.1647006877.git.mchehab@kernel.org/

 drivers/media/Makefile              |  4 +-
 drivers/media/cec/platform/Makefile | 16 ++---
 drivers/media/firewire/Makefile     |  2 +-
 drivers/media/i2c/Makefile          | 92 ++++++++++++++---------------
 drivers/media/test-drivers/Makefile | 10 ++--
 drivers/media/usb/Makefile          | 14 ++---
 drivers/media/usb/gspca/Makefile    | 88 +++++++++++++--------------
 7 files changed, 113 insertions(+), 113 deletions(-)

diff --git a/drivers/media/Makefile b/drivers/media/Makefile
index d18357bf1346..20fac24e4f0f 100644
--- a/drivers/media/Makefile
+++ b/drivers/media/Makefile
@@ -8,7 +8,7 @@
 # when compiled as builtin drivers
 #
 obj-y += i2c/ tuners/
-obj-$(CONFIG_DVB_CORE)  += dvb-frontends/
+obj-$(CONFIG_DVB_CORE) += dvb-frontends/
 
 #
 # Now, let's link-in the media controller core
@@ -18,7 +18,7 @@ ifeq ($(CONFIG_MEDIA_CONTROLLER),y)
 endif
 
 obj-$(CONFIG_VIDEO_DEV) += v4l2-core/
-obj-$(CONFIG_DVB_CORE)  += dvb-core/
+obj-$(CONFIG_DVB_CORE) += dvb-core/
 
 # There are both core and drivers at RC subtree - merge before drivers
 obj-y += rc/
diff --git a/drivers/media/cec/platform/Makefile b/drivers/media/cec/platform/Makefile
index ea6f8ee8161c..26d2bc778394 100644
--- a/drivers/media/cec/platform/Makefile
+++ b/drivers/media/cec/platform/Makefile
@@ -4,12 +4,12 @@
 #
 
 # Please keep it in alphabetic order
-obj-$(CONFIG_CEC_CROS_EC)	+= cros-ec/
-obj-$(CONFIG_CEC_GPIO)		+= cec-gpio/
-obj-$(CONFIG_CEC_MESON_AO)	+= meson/
-obj-$(CONFIG_CEC_SAMSUNG_S5P)	+= s5p/
-obj-$(CONFIG_CEC_SECO)		+= seco/
-obj-$(CONFIG_CEC_STI)		+= sti/
-obj-$(CONFIG_CEC_STM32)		+= stm32/
-obj-$(CONFIG_CEC_TEGRA)		+= tegra/
+obj-$(CONFIG_CEC_CROS_EC) += cros-ec/
+obj-$(CONFIG_CEC_GPIO) += cec-gpio/
+obj-$(CONFIG_CEC_MESON_AO) += meson/
+obj-$(CONFIG_CEC_SAMSUNG_S5P) += s5p/
+obj-$(CONFIG_CEC_SECO) += seco/
+obj-$(CONFIG_CEC_STI) += sti/
+obj-$(CONFIG_CEC_STM32) += stm32/
+obj-$(CONFIG_CEC_TEGRA) += tegra/
 
diff --git a/drivers/media/firewire/Makefile b/drivers/media/firewire/Makefile
index 3670c85af6f5..d5551e6389bf 100644
--- a/drivers/media/firewire/Makefile
+++ b/drivers/media/firewire/Makefile
@@ -2,4 +2,4 @@
 obj-$(CONFIG_DVB_FIREDTV) += firedtv.o
 
 firedtv-y += firedtv-avc.o firedtv-ci.o firedtv-dvb.o firedtv-fe.o firedtv-fw.o
-firedtv-$(CONFIG_DVB_FIREDTV_INPUT)    += firedtv-rc.o
+firedtv-$(CONFIG_DVB_FIREDTV_INPUT) += firedtv-rc.o
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index 7f8c1df60330..557c8c9dfafe 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -2,10 +2,10 @@
 msp3400-objs	:=	msp3400-driver.o msp3400-kthreads.o
 obj-$(CONFIG_VIDEO_MSP3400) += msp3400.o
 
-obj-$(CONFIG_VIDEO_CCS)		+= ccs/
-obj-$(CONFIG_VIDEO_ET8EK8)	+= et8ek8/
+obj-$(CONFIG_VIDEO_CCS) += ccs/
+obj-$(CONFIG_VIDEO_ET8EK8) += et8ek8/
 obj-$(CONFIG_VIDEO_CX25840) += cx25840/
-obj-$(CONFIG_VIDEO_M5MOLS)	+= m5mols/
+obj-$(CONFIG_VIDEO_M5MOLS) += m5mols/
 
 obj-$(CONFIG_VIDEO_APTINA_PLL) += aptina-pll.o
 obj-$(CONFIG_VIDEO_TVAUDIO) += tvaudio.o
@@ -21,11 +21,11 @@ obj-$(CONFIG_VIDEO_SAA717X) += saa717x.o
 obj-$(CONFIG_VIDEO_SAA7127) += saa7127.o
 obj-$(CONFIG_VIDEO_SAA7185) += saa7185.o
 obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
-obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
-obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
-obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
-obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
-obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
+obj-$(CONFIG_VIDEO_AD5820) += ad5820.o
+obj-$(CONFIG_VIDEO_AK7375) += ak7375.o
+obj-$(CONFIG_VIDEO_DW9714) += dw9714.o
+obj-$(CONFIG_VIDEO_DW9768) += dw9768.o
+obj-$(CONFIG_VIDEO_DW9807_VCM) += dw9807-vcm.o
 obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
 obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
 obj-$(CONFIG_VIDEO_ADV7180) += adv7180.o
@@ -38,7 +38,7 @@ obj-$(CONFIG_VIDEO_ADV7842) += adv7842.o
 obj-$(CONFIG_VIDEO_AD9389B) += ad9389b.o
 obj-$(CONFIG_VIDEO_ADV7511) += adv7511-v4l2.o
 obj-$(CONFIG_VIDEO_VPX3220) += vpx3220.o
-obj-$(CONFIG_VIDEO_VS6624)  += vs6624.o
+obj-$(CONFIG_VIDEO_VS6624) += vs6624.o
 obj-$(CONFIG_VIDEO_BT819) += bt819.o
 obj-$(CONFIG_VIDEO_BT856) += bt856.o
 obj-$(CONFIG_VIDEO_BT866) += bt866.o
@@ -102,42 +102,42 @@ obj-$(CONFIG_VIDEO_MT9T112) += mt9t112.o
 obj-$(CONFIG_VIDEO_MT9V011) += mt9v011.o
 obj-$(CONFIG_VIDEO_MT9V032) += mt9v032.o
 obj-$(CONFIG_VIDEO_MT9V111) += mt9v111.o
-obj-$(CONFIG_VIDEO_SR030PC30)	+= sr030pc30.o
-obj-$(CONFIG_VIDEO_NOON010PC30)	+= noon010pc30.o
-obj-$(CONFIG_VIDEO_RJ54N1)	+= rj54n1cb0c.o
-obj-$(CONFIG_VIDEO_S5K6AA)	+= s5k6aa.o
-obj-$(CONFIG_VIDEO_S5K6A3)	+= s5k6a3.o
-obj-$(CONFIG_VIDEO_S5K4ECGX)	+= s5k4ecgx.o
-obj-$(CONFIG_VIDEO_S5K5BAF)	+= s5k5baf.o
-obj-$(CONFIG_VIDEO_S5C73M3)	+= s5c73m3/
-obj-$(CONFIG_VIDEO_ADP1653)	+= adp1653.o
-obj-$(CONFIG_VIDEO_LM3560)	+= lm3560.o
-obj-$(CONFIG_VIDEO_LM3646)	+= lm3646.o
-obj-$(CONFIG_VIDEO_CCS_PLL)	+= ccs-pll.o
-obj-$(CONFIG_VIDEO_AK881X)		+= ak881x.o
-obj-$(CONFIG_VIDEO_IR_I2C)  += ir-kbd-i2c.o
-obj-$(CONFIG_VIDEO_I2C)		+= video-i2c.o
-obj-$(CONFIG_VIDEO_ML86V7667)	+= ml86v7667.o
-obj-$(CONFIG_VIDEO_OV2659)	+= ov2659.o
-obj-$(CONFIG_VIDEO_TC358743)	+= tc358743.o
-obj-$(CONFIG_VIDEO_HI556)	+= hi556.o
-obj-$(CONFIG_VIDEO_HI846)	+= hi846.o
-obj-$(CONFIG_VIDEO_HI847)	+= hi847.o
-obj-$(CONFIG_VIDEO_IMX208)	+= imx208.o
-obj-$(CONFIG_VIDEO_IMX214)	+= imx214.o
-obj-$(CONFIG_VIDEO_IMX219)	+= imx219.o
-obj-$(CONFIG_VIDEO_IMX258)	+= imx258.o
-obj-$(CONFIG_VIDEO_IMX274)	+= imx274.o
-obj-$(CONFIG_VIDEO_IMX290)	+= imx290.o
-obj-$(CONFIG_VIDEO_IMX319)	+= imx319.o
-obj-$(CONFIG_VIDEO_IMX334)	+= imx334.o
-obj-$(CONFIG_VIDEO_IMX335)	+= imx335.o
-obj-$(CONFIG_VIDEO_IMX355)	+= imx355.o
-obj-$(CONFIG_VIDEO_IMX412)	+= imx412.o
-obj-$(CONFIG_VIDEO_ISL7998X)	+= isl7998x.o
-obj-$(CONFIG_VIDEO_MAX9286)	+= max9286.o
-obj-$(CONFIG_VIDEO_MAX9271_LIB)	+= max9271.o
-obj-$(CONFIG_VIDEO_RDACM20)	+= rdacm20.o
-obj-$(CONFIG_VIDEO_RDACM21)	+= rdacm21.o
+obj-$(CONFIG_VIDEO_SR030PC30) += sr030pc30.o
+obj-$(CONFIG_VIDEO_NOON010PC30) += noon010pc30.o
+obj-$(CONFIG_VIDEO_RJ54N1) += rj54n1cb0c.o
+obj-$(CONFIG_VIDEO_S5K6AA) += s5k6aa.o
+obj-$(CONFIG_VIDEO_S5K6A3) += s5k6a3.o
+obj-$(CONFIG_VIDEO_S5K4ECGX) += s5k4ecgx.o
+obj-$(CONFIG_VIDEO_S5K5BAF) += s5k5baf.o
+obj-$(CONFIG_VIDEO_S5C73M3) += s5c73m3/
+obj-$(CONFIG_VIDEO_ADP1653) += adp1653.o
+obj-$(CONFIG_VIDEO_LM3560) += lm3560.o
+obj-$(CONFIG_VIDEO_LM3646) += lm3646.o
+obj-$(CONFIG_VIDEO_CCS_PLL) += ccs-pll.o
+obj-$(CONFIG_VIDEO_AK881X) += ak881x.o
+obj-$(CONFIG_VIDEO_IR_I2C) += ir-kbd-i2c.o
+obj-$(CONFIG_VIDEO_I2C) += video-i2c.o
+obj-$(CONFIG_VIDEO_ML86V7667) += ml86v7667.o
+obj-$(CONFIG_VIDEO_OV2659) += ov2659.o
+obj-$(CONFIG_VIDEO_TC358743) += tc358743.o
+obj-$(CONFIG_VIDEO_HI556) += hi556.o
+obj-$(CONFIG_VIDEO_HI846) += hi846.o
+obj-$(CONFIG_VIDEO_HI847) += hi847.o
+obj-$(CONFIG_VIDEO_IMX208) += imx208.o
+obj-$(CONFIG_VIDEO_IMX214) += imx214.o
+obj-$(CONFIG_VIDEO_IMX219) += imx219.o
+obj-$(CONFIG_VIDEO_IMX258) += imx258.o
+obj-$(CONFIG_VIDEO_IMX274) += imx274.o
+obj-$(CONFIG_VIDEO_IMX290) += imx290.o
+obj-$(CONFIG_VIDEO_IMX319) += imx319.o
+obj-$(CONFIG_VIDEO_IMX334) += imx334.o
+obj-$(CONFIG_VIDEO_IMX335) += imx335.o
+obj-$(CONFIG_VIDEO_IMX355) += imx355.o
+obj-$(CONFIG_VIDEO_IMX412) += imx412.o
+obj-$(CONFIG_VIDEO_ISL7998X) += isl7998x.o
+obj-$(CONFIG_VIDEO_MAX9286) += max9286.o
+obj-$(CONFIG_VIDEO_MAX9271_LIB) += max9271.o
+obj-$(CONFIG_VIDEO_RDACM20) += rdacm20.o
+obj-$(CONFIG_VIDEO_RDACM21) += rdacm21.o
 obj-$(CONFIG_VIDEO_ST_MIPID02) += st-mipid02.o
 obj-$(CONFIG_SDR_MAX2175) += max2175.o
diff --git a/drivers/media/test-drivers/Makefile b/drivers/media/test-drivers/Makefile
index 9f0e4ebb2efe..1e64e05c1f22 100644
--- a/drivers/media/test-drivers/Makefile
+++ b/drivers/media/test-drivers/Makefile
@@ -3,8 +3,8 @@
 # Makefile for the test drivers.
 #
 
-obj-$(CONFIG_VIDEO_VIMC)		+= vimc/
-obj-$(CONFIG_VIDEO_VIVID)		+= vivid/
-obj-$(CONFIG_VIDEO_VIM2M)		+= vim2m.o
-obj-$(CONFIG_VIDEO_VICODEC)		+= vicodec/
-obj-$(CONFIG_DVB_VIDTV)			+= vidtv/
+obj-$(CONFIG_VIDEO_VIMC) += vimc/
+obj-$(CONFIG_VIDEO_VIVID) += vivid/
+obj-$(CONFIG_VIDEO_VIM2M) += vim2m.o
+obj-$(CONFIG_VIDEO_VICODEC) += vicodec/
+obj-$(CONFIG_DVB_VIDTV) += vidtv/
diff --git a/drivers/media/usb/Makefile b/drivers/media/usb/Makefile
index 3eaff3149ef4..65521f4921e3 100644
--- a/drivers/media/usb/Makefile
+++ b/drivers/media/usb/Makefile
@@ -7,15 +7,15 @@
 obj-y += ttusb-dec/ ttusb-budget/ dvb-usb/ dvb-usb-v2/ siano/ b2c2/
 obj-y += zr364xx/ stkwebcam/ s2255/
 
-obj-$(CONFIG_USB_VIDEO_CLASS)	+= uvc/
-obj-$(CONFIG_USB_GSPCA)         += gspca/
-obj-$(CONFIG_USB_PWC)           += pwc/
-obj-$(CONFIG_USB_AIRSPY)        += airspy/
-obj-$(CONFIG_USB_HACKRF)        += hackrf/
-obj-$(CONFIG_USB_MSI2500)       += msi2500/
+obj-$(CONFIG_USB_VIDEO_CLASS) += uvc/
+obj-$(CONFIG_USB_GSPCA) += gspca/
+obj-$(CONFIG_USB_PWC) += pwc/
+obj-$(CONFIG_USB_AIRSPY) += airspy/
+obj-$(CONFIG_USB_HACKRF) += hackrf/
+obj-$(CONFIG_USB_MSI2500) += msi2500/
 obj-$(CONFIG_VIDEO_CPIA2) += cpia2/
 obj-$(CONFIG_VIDEO_AU0828) += au0828/
-obj-$(CONFIG_VIDEO_HDPVR)	+= hdpvr/
+obj-$(CONFIG_VIDEO_HDPVR) += hdpvr/
 obj-$(CONFIG_VIDEO_PVRUSB2) += pvrusb2/
 obj-$(CONFIG_VIDEO_STK1160) += stk1160/
 obj-$(CONFIG_VIDEO_CX231XX) += cx231xx/
diff --git a/drivers/media/usb/gspca/Makefile b/drivers/media/usb/gspca/Makefile
index 3e3ecbffdf9f..a35c45006130 100644
--- a/drivers/media/usb/gspca/Makefile
+++ b/drivers/media/usb/gspca/Makefile
@@ -1,51 +1,51 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_USB_GSPCA)          += gspca_main.o
-obj-$(CONFIG_USB_GSPCA_BENQ)     += gspca_benq.o
-obj-$(CONFIG_USB_GSPCA_CONEX)    += gspca_conex.o
-obj-$(CONFIG_USB_GSPCA_CPIA1)    += gspca_cpia1.o
-obj-$(CONFIG_USB_GSPCA_DTCS033)  += gspca_dtcs033.o
-obj-$(CONFIG_USB_GSPCA_ETOMS)    += gspca_etoms.o
-obj-$(CONFIG_USB_GSPCA_FINEPIX)  += gspca_finepix.o
-obj-$(CONFIG_USB_GSPCA_JEILINJ)  += gspca_jeilinj.o
+obj-$(CONFIG_USB_GSPCA) += gspca_main.o
+obj-$(CONFIG_USB_GSPCA_BENQ) += gspca_benq.o
+obj-$(CONFIG_USB_GSPCA_CONEX) += gspca_conex.o
+obj-$(CONFIG_USB_GSPCA_CPIA1) += gspca_cpia1.o
+obj-$(CONFIG_USB_GSPCA_DTCS033) += gspca_dtcs033.o
+obj-$(CONFIG_USB_GSPCA_ETOMS) += gspca_etoms.o
+obj-$(CONFIG_USB_GSPCA_FINEPIX) += gspca_finepix.o
+obj-$(CONFIG_USB_GSPCA_JEILINJ) += gspca_jeilinj.o
 obj-$(CONFIG_USB_GSPCA_JL2005BCD) += gspca_jl2005bcd.o
-obj-$(CONFIG_USB_GSPCA_KINECT)   += gspca_kinect.o
-obj-$(CONFIG_USB_GSPCA_KONICA)   += gspca_konica.o
-obj-$(CONFIG_USB_GSPCA_MARS)     += gspca_mars.o
+obj-$(CONFIG_USB_GSPCA_KINECT) += gspca_kinect.o
+obj-$(CONFIG_USB_GSPCA_KONICA) += gspca_konica.o
+obj-$(CONFIG_USB_GSPCA_MARS) += gspca_mars.o
 obj-$(CONFIG_USB_GSPCA_MR97310A) += gspca_mr97310a.o
-obj-$(CONFIG_USB_GSPCA_NW80X)    += gspca_nw80x.o
-obj-$(CONFIG_USB_GSPCA_OV519)    += gspca_ov519.o
-obj-$(CONFIG_USB_GSPCA_OV534)    += gspca_ov534.o
-obj-$(CONFIG_USB_GSPCA_OV534_9)  += gspca_ov534_9.o
-obj-$(CONFIG_USB_GSPCA_PAC207)   += gspca_pac207.o
-obj-$(CONFIG_USB_GSPCA_PAC7302)  += gspca_pac7302.o
-obj-$(CONFIG_USB_GSPCA_PAC7311)  += gspca_pac7311.o
-obj-$(CONFIG_USB_GSPCA_SE401)    += gspca_se401.o
+obj-$(CONFIG_USB_GSPCA_NW80X) += gspca_nw80x.o
+obj-$(CONFIG_USB_GSPCA_OV519) += gspca_ov519.o
+obj-$(CONFIG_USB_GSPCA_OV534) += gspca_ov534.o
+obj-$(CONFIG_USB_GSPCA_OV534_9) += gspca_ov534_9.o
+obj-$(CONFIG_USB_GSPCA_PAC207) += gspca_pac207.o
+obj-$(CONFIG_USB_GSPCA_PAC7302) += gspca_pac7302.o
+obj-$(CONFIG_USB_GSPCA_PAC7311) += gspca_pac7311.o
+obj-$(CONFIG_USB_GSPCA_SE401) += gspca_se401.o
 obj-$(CONFIG_USB_GSPCA_SN9C2028) += gspca_sn9c2028.o
-obj-$(CONFIG_USB_GSPCA_SN9C20X)  += gspca_sn9c20x.o
-obj-$(CONFIG_USB_GSPCA_SONIXB)   += gspca_sonixb.o
-obj-$(CONFIG_USB_GSPCA_SONIXJ)   += gspca_sonixj.o
-obj-$(CONFIG_USB_GSPCA_SPCA500)  += gspca_spca500.o
-obj-$(CONFIG_USB_GSPCA_SPCA501)  += gspca_spca501.o
-obj-$(CONFIG_USB_GSPCA_SPCA505)  += gspca_spca505.o
-obj-$(CONFIG_USB_GSPCA_SPCA506)  += gspca_spca506.o
-obj-$(CONFIG_USB_GSPCA_SPCA508)  += gspca_spca508.o
-obj-$(CONFIG_USB_GSPCA_SPCA561)  += gspca_spca561.o
+obj-$(CONFIG_USB_GSPCA_SN9C20X) += gspca_sn9c20x.o
+obj-$(CONFIG_USB_GSPCA_SONIXB) += gspca_sonixb.o
+obj-$(CONFIG_USB_GSPCA_SONIXJ) += gspca_sonixj.o
+obj-$(CONFIG_USB_GSPCA_SPCA500) += gspca_spca500.o
+obj-$(CONFIG_USB_GSPCA_SPCA501) += gspca_spca501.o
+obj-$(CONFIG_USB_GSPCA_SPCA505) += gspca_spca505.o
+obj-$(CONFIG_USB_GSPCA_SPCA506) += gspca_spca506.o
+obj-$(CONFIG_USB_GSPCA_SPCA508) += gspca_spca508.o
+obj-$(CONFIG_USB_GSPCA_SPCA561) += gspca_spca561.o
 obj-$(CONFIG_USB_GSPCA_SPCA1528) += gspca_spca1528.o
-obj-$(CONFIG_USB_GSPCA_SQ905)    += gspca_sq905.o
-obj-$(CONFIG_USB_GSPCA_SQ905C)   += gspca_sq905c.o
-obj-$(CONFIG_USB_GSPCA_SQ930X)   += gspca_sq930x.o
-obj-$(CONFIG_USB_GSPCA_SUNPLUS)  += gspca_sunplus.o
-obj-$(CONFIG_USB_GSPCA_STK014)   += gspca_stk014.o
-obj-$(CONFIG_USB_GSPCA_STK1135)  += gspca_stk1135.o
-obj-$(CONFIG_USB_GSPCA_STV0680)  += gspca_stv0680.o
-obj-$(CONFIG_USB_GSPCA_T613)     += gspca_t613.o
-obj-$(CONFIG_USB_GSPCA_TOPRO)    += gspca_topro.o
-obj-$(CONFIG_USB_GSPCA_TOUPTEK)  += gspca_touptek.o
-obj-$(CONFIG_USB_GSPCA_TV8532)   += gspca_tv8532.o
-obj-$(CONFIG_USB_GSPCA_VC032X)   += gspca_vc032x.o
-obj-$(CONFIG_USB_GSPCA_VICAM)    += gspca_vicam.o
+obj-$(CONFIG_USB_GSPCA_SQ905) += gspca_sq905.o
+obj-$(CONFIG_USB_GSPCA_SQ905C) += gspca_sq905c.o
+obj-$(CONFIG_USB_GSPCA_SQ930X) += gspca_sq930x.o
+obj-$(CONFIG_USB_GSPCA_SUNPLUS) += gspca_sunplus.o
+obj-$(CONFIG_USB_GSPCA_STK014) += gspca_stk014.o
+obj-$(CONFIG_USB_GSPCA_STK1135) += gspca_stk1135.o
+obj-$(CONFIG_USB_GSPCA_STV0680) += gspca_stv0680.o
+obj-$(CONFIG_USB_GSPCA_T613) += gspca_t613.o
+obj-$(CONFIG_USB_GSPCA_TOPRO) += gspca_topro.o
+obj-$(CONFIG_USB_GSPCA_TOUPTEK) += gspca_touptek.o
+obj-$(CONFIG_USB_GSPCA_TV8532) += gspca_tv8532.o
+obj-$(CONFIG_USB_GSPCA_VC032X) += gspca_vc032x.o
+obj-$(CONFIG_USB_GSPCA_VICAM) += gspca_vicam.o
 obj-$(CONFIG_USB_GSPCA_XIRLINK_CIT) += gspca_xirlink_cit.o
-obj-$(CONFIG_USB_GSPCA_ZC3XX)    += gspca_zc3xx.o
+obj-$(CONFIG_USB_GSPCA_ZC3XX) += gspca_zc3xx.o
 
 gspca_main-objs     := gspca.o autogain_functions.o
 gspca_benq-objs     := benq.o
@@ -95,6 +95,6 @@ gspca_vicam-objs    := vicam.o
 gspca_xirlink_cit-objs := xirlink_cit.o
 gspca_zc3xx-objs    := zc3xx.o
 
-obj-$(CONFIG_USB_M5602)   += m5602/
+obj-$(CONFIG_USB_M5602) += m5602/
 obj-$(CONFIG_USB_STV06XX) += stv06xx/
-obj-$(CONFIG_USB_GL860)   += gl860/
+obj-$(CONFIG_USB_GL860) += gl860/
-- 
2.35.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
